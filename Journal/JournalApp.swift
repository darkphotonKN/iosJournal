//
//  JournalApp.swift
//  Journal
//
//  Created by Kranti on 2023/11/19.
//

import SwiftUI
import SwiftData

@main
struct JournalApp: App {
    var sharedModelContainer: ModelContainer {
        let schema = Schema([
            JournalEntry.self
        ])
        
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        
        // attempt to intialize model container
        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
            
        } catch {
            fatalError("Something went wrong with model container: \(error)")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            JournalEntriesListView()
        }.modelContainer(sharedModelContainer)
    }
}
