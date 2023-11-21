//
//  ContentView.swift
//  Journal
//
//  Created by Kranti on 2023/11/19.
//

import SwiftUI
import SwiftData

struct JournalEntriesListView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var journalList: [JournalEntry]
    
    // state
    @State private var showSheet: Bool = false
    
    var body: some View {
        Text("").onAppear {
            print("journalList:", journalList)
        }
        NavigationStack {
            List(journalList) { item in
                NavigationLink(destination: JournalEntryWrapperView()) {
                    JournalEntryRowView(journalEntry: item)
                }
            }.padding(.top, 8)
            .navigationTitle("\(journalList.count) entries")
            .toolbar {
                Button(action: {showSheet = true}) {
                    Label("New Entry", systemImage: "plus")
                }
            }.sheet(isPresented: $showSheet) {
                CreateJournalEntryView()
            }
            
        }
    }
}

#Preview {
    JournalEntriesListView()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}
