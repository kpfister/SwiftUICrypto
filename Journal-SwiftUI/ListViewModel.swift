//
//  ListViewModel.swift
//  Journal-SwiftUI
//
//  Created by Karl Pfister on 4/2/24.
//

import Foundation
import SwiftUI


class ListViewModel: ObservableObject {
    @Published var entries = [
        Entry(title: "Entry 1", details: "Details for the entry"),
        Entry(title: "Entry 2", details: "Details for the entry"),
        Entry(title: "Entry 3", details: "Details for the entry")
    ]
}
