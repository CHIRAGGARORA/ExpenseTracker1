//
//  TransactionListViewModel.swift
//  ExpenseTracker1
//
//  Created by chirag arora on 03/01/24.
//

import Foundation


final class TransactionListViewModel: ObservableObject {
    @Published var transcations: [Transaction] = []
    // @Published is responsible for sending notifications to subscribers whenever its value has changed
    
    func getTransactions() {
        guard let url = URL(string: "https://designcode.io/data/transactions.json") else {
            print("Invalid Url ")
            return
        }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { (data, response) -> Data in
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                    dump(response)
                    throw URLError(.badServerResponse)
                    
                }
                
                return data
            }
        
            .decode(type: [Transaction].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
        
    }
    
}
