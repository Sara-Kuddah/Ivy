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
            Rectangle()
                .fill(.green)
                .frame(width: 350, height: 1)
            Text("What eco-friendly habits have you accomplished today?")
                .foregroundColor(.green)
               
                .multilineTextAlignment(.center)
            Rectangle()
                .fill(.green)
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
