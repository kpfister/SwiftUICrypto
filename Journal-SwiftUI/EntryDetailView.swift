//
//  EntryDetailView.swift
//  Journal-SwiftUI
//
//  Created by Karl Pfister on 4/2/24.
//

import SwiftUI

class EntryDetailViewModel: ObservableObject {
    @Published var entry: Entry? = nil
    
    func save(title: String, details: String) {
        guard !title.isEmpty else {return}
        
        if let entry = entry {
            entry.title = title
            entry.details = details
        } else {
            let entry = Entry(title: title, details: details)
        }
        
    }

}


struct EntryDetailView: View {
    @State var entryTitle: String = ""
    @State var detailText: String = ""
    
    @ObservedObject var viewModel: EntryDetailViewModel
    
    var body: some View {
        VStack {
            titleTextField
            detailTextEditior
        }
        .padding()
        .background(Color.orange)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: {
                    print("Button tapped")
                }, label: {
                    Text("Save")
                })
            }
        }
        .toolbarBackground(Color.white, for: .navigationBar)
    }
    
    private var titleTextField: some View {
        TextField("Entry Title", text: $entryTitle)
            .padding()
            .background(Color.white)
            .clipShape(
                RoundedRectangle(cornerRadius: 5.0)
            )
    }
    
    private var detailTextEditior: some View {
        TextEditor(text: $detailText)
            .clipShape(
                RoundedRectangle(cornerRadius: 5.0)
            )
    }
} // End of View

#Preview {
    NavigationStack {
        EntryDetailView(viewModel: EntryDetailViewModel())
    }
}
