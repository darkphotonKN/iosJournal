//
//  JournalEntryRowView.swift
//  Journal
//
//  Created by Kranti on 2023/11/20.
//

import SwiftUI

struct JournalEntryRowView: View {
    var journalEntry: JournalEntry
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(journalEntry.date, style: .date).font(.system(size: 14, weight: .bold )).padding(.bottom, 3)
            
            HStack(spacing: 15) {
                Image(systemName: "arrow.forward.square")
                Text(journalEntry.title).lineLimit(1)
                Text("-")
                Text(journalEntry.content).lineLimit(1)
            }
        
        }
        
    }
}

#Preview {
    JournalEntriesListView()
}
