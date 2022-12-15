//
//  search bar tool.swift
//  Ivy
//
//  Created by Dina Alhajj Ibrahim on 08/12/2022.
//

import SwiftUI

struct search_bar_tool: View {
    @State private var searchText = ""
    var body: some View {
      
        VStack{
            NavigationStack {
                //Text("Searching for \(searchText)")
                // .navigationTitle("Searchable Example")
            }
            .searchable(text: $searchText)
            
        }
    }
    }
    


struct search_bar_tool_Previews: PreviewProvider {
    static var previews: some View {
        search_bar_tool()
    }
}
