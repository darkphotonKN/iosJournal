//
//  JournalEntryWrapperView.swift
//  Journal
//
//  Created by Kranti on 2023/11/22.
//

import SwiftUI

struct JournalEntryWrapperView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    
    var journalEntry: JournalEntry
    @State private var edit: Bool = false
    
    
    var body: some View {
        
        NavigationStack {
            if(edit == true) {
                JournalEntryEditView(journalEntry: journalEntry)
            } else {
                JournalEntryDetailView(journalEntry: journalEntry)
            }
        }.toolbar() {
            // delete button in edit mode
            if(edit == true) {
                Button(action: deleteEntry) {
                    Text("delete")
                }.foregroundStyle(.red)
            }
            
            // done / edit button
            Button(action: { edit.toggle() }) {
                if(edit == true) {
                    Text("Done")
                } else {
                    Text("Edit")
                }
            }
            
            
        }
        
    }
    
    func deleteEntry() {
        // removing the journal entry from swift data
        modelContext.delete(journalEntry)
        
        // closing sheet
        dismiss()
    }
}


#Preview {
    JournalEntriesListView()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}
