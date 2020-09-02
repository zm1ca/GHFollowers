//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Źmicier Fiedčanka on 2.09.20.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
