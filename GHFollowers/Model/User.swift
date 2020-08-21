//
//  User.swift
//  GHFollowers
//
//  Created by Źmicier Fiedčanka on 21.08.20.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    
    var name: String?
    var location: String?
    var bio: String?
    
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    
    var following: Int
    var followers: Int
    var createdAt: String
}
