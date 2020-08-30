//
//  PersistanceManager.swift
//  GHFollowers
//
//  Created by Źmicier Fiedčanka on 30.08.20.
//

import Foundation


enum PersistanceActionType {
    case add, remove
}


enum PersistanceManager {
    static private let defaults = UserDefaults.standard
    
    enum Keys {
        static let favorites = "favorites"
    }
    
    
    static func updateWith(favorite: Follower, actionType: PersistanceActionType, completed: @escaping (GFError?) -> Void) {
        retrieveFavorites { result in
            switch result {
            
            case .success(let favorites):
                var retrievedFavotites = favorites
                
                switch actionType {
                case .add:
                    guard !retrievedFavotites.contains(favorite) else {
                        completed(.alreadyInFavorites)
                        return
                    }
                    
                    retrievedFavotites.append(favorite)
                    
                case .remove:
                    retrievedFavotites.removeAll { $0.login == favorite.login }
                }
                
                 completed(save(favorites: retrievedFavotites))
                
            case .failure(let error):
                completed(error)
            }
        }
    }
    
    
    static func retrieveFavorites(completed: @escaping (Result<[Follower], GFError>) -> Void) {
        guard let favoritesData = defaults.object(forKey: Keys.favorites) as? Data else {
            completed(.success([])) //first access to data
            return
        }
        
        do {
            let decoder = JSONDecoder()
            
            let favorites = try decoder.decode([Follower].self, from: favoritesData)
            completed(.success(favorites))
        } catch {
            completed(.failure(.unableToFavorite))
        }
    }
    
    
    static func save(favorites: [Follower]) -> GFError? {
        
        do {
            let encoder = JSONEncoder()
            let encodedFavorites = try encoder.encode(favorites)
            defaults.setValue(encodedFavorites, forKey: Keys.favorites)
            return nil
        } catch {
            return .unableToFavorite
        }
    }
}
