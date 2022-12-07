//
//  LoginView.swift
//  Ivy
//
//  Created by Alaa Alabdullah on 07/12/2022.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Text("Hello.")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Welcome Back")
                    .font(.title)
                    .fontWeight(.semibold)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
