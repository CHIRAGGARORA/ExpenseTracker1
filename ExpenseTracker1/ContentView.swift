//
//  ContentView.swift
//  ExpenseTracker1
//
//  Created by chirag arora on 02/01/24.
//

import SwiftUI
import SwiftUICharts

struct ContentView: View {
    var demodata: [Double] = [8,2,5,6,9,1,3,4,12]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    // MARK: Title
                    Text("Overview")
                        .font(.title2)
                        .bold()
                    
                    // MARK: - Chart
                    CardView {
                        VStack{
                            ChartLabel("$900", type: .title)
                            
                            LineChart()
                        }
                        .background(Color(.systemBackground))
                        
                    }
                    .data(demodata)
                    .chartStyle(ChartStyle(backgroundColor: Color(.systemBackground), foregroundColor: ColorGradient(Color.icon.opacity(0.4), Color.icon)))
                    .frame(height: 300)
                    
                    
                    // MARK: - Transaction List
                    recentTransactionList()
                    
                    
                }.padding()
                    .frame(maxWidth: .infinity)
            }
            .background(Color.background)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                // MARK: - Notification Icon
                ToolbarItem {
                    Image(systemName: "bell.badge")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.icon, .primary)
                }
                
            }
        }
        .accentColor(.primary)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
    }()
    
    static var previews: some View{
        Group{
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
        .environmentObject(transactionListVM)
    }
}

