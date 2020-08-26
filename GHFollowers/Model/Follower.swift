//
//  Follower.swift
//  GHFollowers
//
//  Created by Źmicier Fiedčanka on 21.08.20.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String //To be converted from camelCase to snake_case, like in API
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(login)
    }
}
