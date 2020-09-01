//
//  User.swift
//  GHFollowers
//
//  Created by Źmicier Fiedčanka on 21.08.20.
//

import Foundation

struct User: Codable {
    let login: String
    var avatarUrl: String
    
    var name: String?
    var location: String?
    var bio: String?
    
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    
    let following: Int
    let followers: Int
    let createdAt: Date
}
