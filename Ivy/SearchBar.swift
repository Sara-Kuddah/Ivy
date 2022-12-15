//
//  Searchbar.swift
//  Ivy
//
//  Created by Fatma Gazwani on 21/05/1444 AH.
//

import SwiftUI

struct SearchBar: View {
        @State private var query = ""
        var body: some View {
            VStack {
                
        TextField("Search", text: $query)
                    .textFieldStyle(RoundedBorderTextFieldStyle())


                List {
                    // Filtered search results go here
                }
            }   .padding()
                .frame( height: 60)


        }
        }

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
