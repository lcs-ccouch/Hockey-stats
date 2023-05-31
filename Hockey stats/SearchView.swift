//
//  SearchView.swift
//  Hockey stats
//
//  Created by calum couch on 2023-05-31.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            TextField("Search", text: $searchText)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .padding()
            
            Button("Search") {
                // Perform search action
                search()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding()
        }
    }
    
    private func search() {
        // Implement search logic here
        print("Searching for: \(searchText)")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
