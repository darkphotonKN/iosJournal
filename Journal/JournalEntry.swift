//
//  File.swift
//  Journal
//
//  Created by Kranti on 2023/11/19.
//

import Foundation

// creates an instanced list of journal entries
class JournalEntry: Identifiable {
    var title: String = ""
    var date: Date = Date()
    var content: String = ""
    
    init(title: String, date: Date, content: String) {
        self.title = title
        self.date = date
        self.content = content
    }
}

// list of current journal entries 
var journalList = [
    JournalEntry(title: "My long day", date: Date(), content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tellus elementum sagittis vitae et leo duis ut diam. Vitae tempus quam pellentesque nec nam aliquam sem et. Lectus proin nibh nisl condimentum id. Iaculis nunc sed augue lacus viverra. Volutpat diam ut venenatis tellus in metus vulputate. Consequat interdum varius sit amet mattis. Sit amet risus nullam eget felis eget nunc lobortis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tellus elementum sagittis vitae et leo duis ut diam. Vitae tempus quam pellentesque nec nam aliquam sem et. Lectus proin nibh nisl condimentum id. Iaculis nunc sed augue lacus viverra. Volutpat diam ut venenatis tellus in metus vulputate. Consequat interdum varius sit amet mattis. Sit amet risus nullam eget felis eget nunc lobortis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tellus elementum sagittis vitae et leo duis ut diam. Vitae tempus quam pellentesque nec nam aliquam sem et. Lectus proin nibh nisl condimentum id. Iaculis nunc sed augue lacus viverra. Volutpat diam ut venenatis tellus in metus vulputate. Consequat interdum varius sit amet mattis. Sit amet risus nullam eget felis eget nunc lobortis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tellus elementum sagittis vitae et leo duis ut diam. Vitae tempus quam pellentesque nec nam aliquam sem et. Lectus proin nibh nisl condimentum id. Iaculis nunc sed augue lacus viverra. Volutpat diam ut venenatis tellus in metus vulputate. Consequat interdum varius sit amet mattis. Sit amet risus nullam eget felis eget nunc lobortis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tellus elementum sagittis vitae et leo duis ut diam. Vitae tempus quam pellentesque nec nam aliquam sem et. Lectus proin nibh nisl condimentum id. Iaculis nunc sed augue lacus viverra. Volutpat diam ut venenatis tellus in metus vulputate. Consequat interdum varius sit amet mattis. Sit amet risus nullam eget felis eget nunc lobortis."),
    JournalEntry(title: "Met with jan", date: Date(), content: "A erat nam at lectus urna. Morbi tristique senectus et netus et malesuada fames ac. Auctor neque vitae tempus quam pellentesque nec. Enim sit amet venenatis urna cursus eget nunc scelerisque viverra. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu. Neque egestas congue quisque egestas diam in arcu cursus. Eget nunc lobortis mattis aliquam faucibus purus in massa. Tellus id interdum velit laoreet id donec ultrices tincidunt arcu. Interdum velit euismod in pellentesque massa placerat duis ultricies lacus. Morbi tincidunt augue interdum velit euismod in. Donec enim diam vulputate ut pharetra sit.."),
    JournalEntry(title: "Ate the worst food", date: Date(), content: "Some stuff has happened."),
    JournalEntry(title: "Ate the worst food", date: Date(), content: "Some stuff has happened."),
]

