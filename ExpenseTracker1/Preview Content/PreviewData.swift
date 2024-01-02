//
//  PreviewData.swift
//  ExpenseTracker1
//
//  Created by chirag arora on 03/01/24.
//

import Foundation
import SwiftUI

var transactionPreviewData = Transaction(id: 1, date: "01/24/2023", institution: "PES", account: "Visa", merchant: "Apple", amount: 12.45, type: "debit", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
