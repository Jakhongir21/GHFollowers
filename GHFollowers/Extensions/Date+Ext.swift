//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Jakhongir on 26/07/23.
//

import Foundation


extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, yyyy"
        return dateFormatter.string(from: self)
    }
}
