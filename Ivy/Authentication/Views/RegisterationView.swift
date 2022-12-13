//
//  RegisterationView.swift
//  Ivy
//
//  Created by Alaa Alabdullah on 07/12/2022.
//

import SwiftUI

struct RegisterationView: View {
    @State private var FullName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var repassword = ""
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        NavigationView{
            VStack{
                AuthenticationHeader(title1: "Welcome To Ivy!", title2: "Please Sign Up So You Can Access This Feature")
                //.padding(.top , 600)
                
                Text("Register")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("ourgreen"))
                VStack(spacing: 25) {
                    //TextField("Email", text: $email)
                    CustomInputField(placeholderText: "Full Name", text: $FullName)
                    CustomInputField(placeholderText: "Email", text: $email)
                    //TextField("Password", text: $password)
                    CustomInputField(placeholderText: "Password", text: $password)
                    CustomInputField(placeholderText: "Re Enter Password", text: $repassword)
                }
                .padding(.horizontal , 32)
                .padding(.top, 10)
                //.border(solid, 4)
                
                
                
                Button{
                    print("sign up here")
                } label: {
                    Text("Sign up")
                        .font(.headline)
                    //.fontWeight(.semibold)
                        .foregroundColor(Color("ourgreen"))
                        .frame(width: 340, height: 50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("ourgreen"), lineWidth: 0))
                }.background(Color("ourlightgreen")) // If you have this
                    .cornerRadius(10)
                    .padding()
                    .padding(.top)
                
                Spacer()
                
                Button {
                    presentaionMode.wrappedValue.dismiss()
                } label: {
                    Text("Already A Member? Sign in")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("ourlightgreen"))
                        .frame(width: 340, height: 50)
                }
            }
        }
    }
}

struct RegisterationView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterationView()
    }
}
