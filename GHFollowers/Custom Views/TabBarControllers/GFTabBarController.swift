//
//  GFTabBarController.swift
//  GHFollowers
//
//  Created by Źmicier Fiedčanka on 1.09.20.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemGreen
        self.viewControllers            = [createSearchNC(), createFavoritesNC(), createTestNC()]
    }
    
    
    func createSearchNC() -> UINavigationController {
        let searchVC = SearchVC()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    
    func createFavoritesNC() -> UINavigationController {
        let favoritesListVC = FavoritesListVC()
        favoritesListVC.title = "Favorites"
        favoritesListVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesListVC)
    }
    
    
    func createTestNC() -> UINavigationController {
        let testVC = TestVC()
        testVC.title = "Test"
        testVC.tabBarItem = UITabBarItem(tabBarSystemItem: .mostRecent, tag: 2)
        
        return UINavigationController(rootViewController: testVC)
    }
}
