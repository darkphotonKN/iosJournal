//
//  ContentView.swift
//  Journal
//
//  Created by Kranti on 2023/11/19.
//

import SwiftUI

struct JournalEntriesListView: View {
    
    var body: some View {
        NavigationStack {
            List(journalList) { item in
                NavigationLink(destination: JournalEntryDetailView(journalEntry: item)) {
                    JournalEntryRowView(journalEntry: item)
                }
            }.padding(.top, 8)
            .navigationTitle("\(journalList.count) entries")
            
        }
        
    }
}

#Preview {
    JournalEntriesListView()
}
