//
//  JournalEntryWrapperView.swift
//  Journal
//
//  Created by Kranti on 2023/11/22.
//

import SwiftUI

struct JournalEntryWrapperView: View {
    
    var body: some View {
        Text("")
    }
}


#Preview {
    JournalEntriesListView()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}
