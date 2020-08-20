//
//  GFButton.swift
//  GHFollowers
//
//  Created by Źmicier Fiedčanka on 20.08.20.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    //Handles init via storyboard
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //private - so it can be used only from inside of class
    private func configure() {
        layer.cornerRadius      = 10
        titleLabel?.textColor   = .white
        titleLabel?.font        = UIFont.preferredFont(forTextStyle: .headline) //Dynamic type
        translatesAutoresizingMaskIntoConstraints = false //autolayout programmatic constraints
    }
    
}
