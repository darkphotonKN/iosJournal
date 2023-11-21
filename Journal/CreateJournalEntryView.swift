//
//  File.swift
//  Journal
//
//  Created by Kranti on 2023/11/20.
//

import SwiftUI

struct CreateJournalEntryView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State var title: String = ""
    @State var date: Date = Date()
    @State var content: String = ""
    @State var rating: Double = 0
    
    var body: some View {
        NavigationStack {
            Form {
                TextField(text: $title, label: {
                    Text("Enter title")
                })
                DatePicker(selection: $date, displayedComponents: .date, label: {
                    Text("Date:")
                })
                
                // Rating
                HStack {
                    Text("Rating:")
                    Text(String(repeating: "🍔", count: Int(rating)))
                }
                Slider(value: $rating, in: 0...5, step: 1)
                
                TextEditor(text: $content)
                
            }
            .navigationTitle("New Entry")
            .toolbar() {
               
                // Cancel entry
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { dismiss() }) {
                        Text("Cancel")
                    }
                }
              
                // Save new entry button
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: addJournalEntry) {
                        Text("Save")
                        // close the sheet
                    }
                }
                
            }
        }
    }
    
    func addJournalEntry() {
        // create new instance of JournalEntry and add to SwiftData
        let newJournalEntry = JournalEntry(title: title, date: date, content: content, rating: Int(rating))
        
        // add it to our SwiftData
        modelContext.insert(newJournalEntry)
        
        // close the sheet
        dismiss()
    }
}

#Preview {
    CreateJournalEntryView()
}
