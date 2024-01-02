//
//  TransactionModel.swift
//  ExpenseTracker1
//
//  Created by chirag arora on 03/01/24.
//

import Foundation

struct Transaction: Identifiable, Decodable {
    let id: Int
    let date: String
    let institution: String
    let account: String
    var merchant: String
    let amount: Double
    let type: transactionType.RawValue
    var categoryId: Int
    var category: String
    let isPending: Bool
    var isTransfer: Bool
    var isExpense: Bool
    var isEdited: Bool
    
    var dateParsed: Date {
        date.dateParsed()
    }
    
    var signedAmount: Double {
        return type == transactionType.credit.rawValue ? amount : -amount
    }
}

enum transactionType: String {
    case debit = "debit"
    case credit = "credit"
}
