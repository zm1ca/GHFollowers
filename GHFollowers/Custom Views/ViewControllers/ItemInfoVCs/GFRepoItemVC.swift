//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Źmicier Fiedčanka on 28.08.20.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counfigureItems()
    }
    
    private func counfigureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, with: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, with: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GutHub Profile")
    }
}
