//
//  JournalEntryFormView.swift
//  Journal
//
//  Created by Kranti on 2023/11/22.
//

import SwiftUI

struct JournalEntryFormView: View {
    @Binding var title: String
    @Binding var date: Date
    @Binding var content: String
    @Binding var rating: Double
    
    
    var body: some View {
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
    }
}
