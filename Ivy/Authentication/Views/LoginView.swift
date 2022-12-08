//
//  LoginView.swift
//  Ivy
//
//  Created by Alaa Alabdullah on 07/12/2022.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack{
            
            Rectangle()
                .frame(height: 1)
                .padding()
                .padding(.top , 50)
                //.frame(width: 20)
            VStack{
                Text("Welcome To Ivy!")
                    .font(.title)
                    //.fontWeight(.semibold)
                Text("Please Login So You Can Access This Feature")
                    //.font(.title)
                    //.fontWeight(.semibold)
            }
            Rectangle()
                .frame(height: 1)
                .padding()
            
                //.padding(.top , 600)
            
            Text("Login")
                .font(.title)
                .fontWeight(.semibold)
            VStack(spacing: 40) {
                TextField("Email", text: $email)
            }
            
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
