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
        translatesAutoresizingMaskIntoConstraints = false //autolayout programmatic constraints
        
        layer.cornerRadius      = 10
        titleLabel?.font        = UIFont.preferredFont(forTextStyle: .headline) //Dynamic type
        setTitleColor(.white, for: .normal) //not titleLabel?.textColor   = .white
    }
    
    
    func set(backgroundColor: UIColor, title: String) {
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
    }
    
}
