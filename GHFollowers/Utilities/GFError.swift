//
//  GFError.swift
//  GHFollowers
//
//  Created by Źmicier Fiedčanka on 21.08.20.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created wrong URL request."
    case unableToComplete = "We're unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please, try again."
    case invalidData = "The data recieved from server was invalid. Please, try again."
    case unableToFavorite = "There was an error favorining this user."
    case alreadyInFavorites = "You've already favorited this user."
}
