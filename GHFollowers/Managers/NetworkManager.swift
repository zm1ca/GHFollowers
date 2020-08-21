//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Źmicier Fiedčanka on 21.08.20.
//

import Foundation

class NetworkManager {
    static let shared    = NetworkManager() // It's singleton, so only 1 instance and it's static
    let baseURL          = "https://api.github.com/users/"
    let followersPerPage = 100
    
    private init() { }
    
    func getFollowers(for username: String, page: Int, completed: @escaping ([Follower]?, String?) -> Void) {
        let endpoint = baseURL + "\(username)/followers?per_page=\(followersPerPage)&page=\(page)"
    
        guard let url = URL(string: endpoint) else {
            completed(nil, "This username created wrong URL request.")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(nil, "We're unable to complete your request. Please check your internet connection.")
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, "Invalid response from the server. Please, try again.")
                return
            }
            
            guard let data = data else {
                completed(nil, "The data recieved from server was invalid. Please, try again.")
                return
            }
            
            //MARK:: Parsing JSON
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
            } catch {
                completed(nil, "The data recieved from server was invalid. Please, try again.")
            }
            
            return //?
        }
        
        task.resume()
    }
}
