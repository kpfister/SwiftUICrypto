//
//  JounralListView.swift
//  Journal-SwiftUI
//
//  Created by Karl Pfister on 4/2/24.
//

import SwiftUI




struct JounralListView: View {
    
    @ObservedObject var viewModel: ListViewModel
    
    // Setting uup Dependcy Injection for testing and otehr SOLID shit
    init(viewModel: ListViewModel = ListViewModel()) {
        self.viewModel = viewModel
    }
    
    
    var body: some View {
        NavigationStack {
            List(viewModel.entries) { entry in
                listCell(entry)
            }
            .listStyle(.plain)
            .navigationTitle("Journal Entries")
        }
    }
    
    private func listCell(_ entry: Entry) -> some View {
        NavigationLink {
            /// Destination
            EntryDetailView()
        } label: {
            Text(entry.title)
        }
    }
} // End of View

#Preview {
    JounralListView(viewModel: ListViewModel())
}
