//
//  Journal_SwiftUIApp.swift
//  Journal-SwiftUI
//
//  Created by Karl Pfister on 4/2/24.
//

import SwiftUI

/// Not an app delegate but this is the entry point for the applicaiton
///

@main
struct Journal_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            JounralListView()
                .preferredColorScheme(.light)
        }
    }
}
