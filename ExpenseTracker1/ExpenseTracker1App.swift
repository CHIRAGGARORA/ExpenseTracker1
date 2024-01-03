//
//  ExpenseTracker1App.swift
//  ExpenseTracker1
//
//  Created by chirag arora on 02/01/24.
//

import SwiftUI

@main
struct ExpenseTracker1App: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
