//
//  File.swift
//  Journal
//
//  Created by Kranti on 2023/11/19.
//

import Foundation
import SwiftData


// creates an instanced list of journal entries
@Model
final class JournalEntry: Identifiable {
    var title: String = ""
    var date: Date = Date()
    var content: String = ""
    var rating: Int
    
    init(title: String, date: Date, content: String, rating: Int) {
        self.title = title
        self.date = date
        self.content = content
        self.rating = rating
        
    }
}


