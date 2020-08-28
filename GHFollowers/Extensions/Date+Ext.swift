//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Źmicier Fiedčanka on 28.08.20.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
