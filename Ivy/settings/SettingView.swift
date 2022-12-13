//
//  SettingView.swift
//  Ivy
//
//  Created by nouf on 14/05/1444 AH.
//

import SwiftUI

struct SettingView: View {
    @State private var Language = true
    @State private var Mode = false
    var body: some View {
        VStack{
            
            Text("Setting")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.gray)
                .padding(.bottom, 55.0)
                .padding(.trailing, 209.0)
                .opacity(1)
           
    VStack(alignment: .leading, spacing: 24){

              HStack{
                    Image(systemName: "globe")
                        .font(.system(size: 20))
                        .foregroundColor(Color("ourlightgreen"))
                  
Toggle(isOn: $Language) {
    Text("Language")
        .font(.title3)
                  }

                  
                    
                }
        HStack{
            Image(systemName: "moon.circle")
                .font(.system(size: 22))
                .foregroundColor(Color("ourlightgreen"))
            Toggle(isOn: $Mode) {
                Text("Mode")
            }
        }
                 
        
        
        HStack{
            Image(systemName: "leaf.circle")
                .font(.system(size: 22))
                .foregroundColor(Color("ourlightgreen"))
            Text("About us")
            
        }
        

                HStack{
                    Image(systemName: "square.and.arrow.up.circle")
                        .font(.system(size: 22))
                        .foregroundColor(Color("ourlightgreen"))
                    Text("Share App")
                    
                }

                HStack{
        Image(systemName: "lock.circle")
                        .font(.system(size: 22))
                        .foregroundColor(Color("ourlightgreen"))
                    Text("Privacy Policy")
                    
                }
  
                HStack{
                    
    Image(systemName: "arrow.left.circle")
    .font(.system(size: 22))
    .foregroundColor(Color("ourlightgreen"))
    Text("Log out")
                }
              
                HStack{
    Image(systemName: "xmark.bin.circle")
    .font(.system(size: 22))
    .foregroundColor(Color("ourred"))
            Text("Delete Account")
    .foregroundColor(Color("ourred"))
                }
    }.padding(.leading, 35.0)
   
            
        }.padding(.bottom, 200.0)
            .padding(.trailing, 38.0)
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
        struct SettingView_Previews: PreviewProvider {
            static var previews: some View {
                SettingView()
            }
        }
    }
