//
//  Entry.swift
//  Journal-SwiftUI
//
//  Created by Karl Pfister on 4/2/24.
//

import Foundation

class Entry {
    var title, details: String
    
    init(title: String, details: String) {
        self.title = title
        self.details = details
    }
}

extension Entry: Identifiable {
    
}
