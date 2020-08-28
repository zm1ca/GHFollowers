//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by Źmicier Fiedčanka on 28.08.20.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counfigureItems()
    }
    
    private func counfigureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, with: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, with: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
}
