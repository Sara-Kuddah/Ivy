//
//  ContentView.swift
//  Ivy
//
//  Created by Alaa Alabdullah on 07/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            search_bar_tool()

            Rectangle()
                .fill(Color("ourgreen"))
                .frame(width: 350, height: 1)
            Text("What eco-friendly habits have you accomplished today?")
                .foregroundColor(Color("ourgreen"))
               
                .multilineTextAlignment(.center)
            Rectangle()
                .fill(Color("ourgreen"))
                .frame(width: 350, height: 1)
                .padding(.bottom, 550)
           
               
                
                
                
            }
            
        }
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
