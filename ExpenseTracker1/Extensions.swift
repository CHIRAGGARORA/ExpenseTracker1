//
//  Extensions.swift
//  ExpenseTracker1
//
//  Created by chirag arora on 02/01/24.
//

import Foundation
import SwiftUI

//extension Color {
//    static let systemBackground = Color.systemBackground
//}

extension DateFormatter {
    static let allNumericUSA: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        
        return formatter
    }()
}

extension String {
    func dateParsed() -> Date {
        guard let parsedDate = DateFormatter.allNumericUSA.date(from: self) else { return Date() }
        
        return parsedDate
    }
}

extension Date: Strideable {
    func formatted() -> String {
        return self.formatted(.dateTime.year().month().day())
        
    }
}

extension Double {
    func roundedToTwoDigits() -> Double {
        return (self * 100).rounded() / 100
    }
}
