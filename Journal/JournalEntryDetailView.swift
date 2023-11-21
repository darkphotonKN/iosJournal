//
//  TestView.swift
//  Journal
//
//  Created by Kranti on 2023/11/20.
//

import SwiftUI

struct JournalEntryDetailView: View {
    var journalEntry: JournalEntry
    
    var body: some View {
        ScrollView {
            HStack {
                VStack(alignment: .leading) {
                
                    Text(journalEntry.date, style: .date)
                        .font(.system(size: 14, weight: .medium))
                        .padding([.top, .bottom, .leading], 15)
                    
                    Text(journalEntry.content)
                        .font(.system(size: 18, weight: .light))
                        .padding([.leading, .trailing], 15)
                        
                }
                Spacer()
                
            }
            
        }.navigationTitle(journalEntry.title)
    }
}

#Preview {
    JournalEntriesListView()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}
