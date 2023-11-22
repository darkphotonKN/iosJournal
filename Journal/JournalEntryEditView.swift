//
//  File.swift
//  Journal
//
//  Created by Kranti on 2023/11/22.
//

import SwiftUI

struct JournalEntryEditView: View {
    @Environment(\.modelContext) private var modelContext
    
    @State var journalEntry: JournalEntry
    
    var body: some View {
        JournalEntryFormView(title: $journalEntry.title, date: $journalEntry.date, content: $journalEntry.content, rating: $journalEntry.rating)
    }
}




