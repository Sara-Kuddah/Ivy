//
//  sign out.swift
//  Ivy
//
//  Created by nouf on 19/05/1444 AH.
//

import SwiftUI

struct sign_out: View {
    @State var presentPopup = false
    
    var body: some View {
        VStack{
            
            Button("sign out") {
                presentPopup = true
            }
            .popover(isPresented: $presentPopup, arrowEdge: .bottom) {
                
                
                Text("test")
                
                
                    .frame(width: 100, height: 100)
            }
            
            
            
        }
    }
    
    struct sign_out_Previews: PreviewProvider {
        static var previews: some View {
            sign_out()
        }
    }}
