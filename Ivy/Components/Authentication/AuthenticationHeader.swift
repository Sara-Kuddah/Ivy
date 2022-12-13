//
//  AuthenticationHeader.swift
//  Ivy
//
//  Created by Alaa Alabdullah on 08/12/2022.
//

import SwiftUI

struct AuthenticationHeader: View {
    let title1: String
    let title2: String
    
    var body: some View {
        VStack{
            //Divider()
            Rectangle()
                .frame(height: 1)
                .padding()
                .padding(.top , 50)
                .foregroundColor(Color("ourlightgreen"))
            
            //.frame(width: 20)
            VStack{
                Text(title1)
                    .font(.title)
                    .foregroundColor(Color("ourlightgreen"))
                //.fontWeight(.semibold)
                Text(title2)
                    .foregroundColor(Color("ourlightgreen"))
                //.font(.title)
                //.fontWeight(.semibold)
            }
            Rectangle()
                .frame(height: 1)
                .padding()
                .foregroundColor(Color("ourlightgreen"))
            
        }
    }
}

struct AuthenticationHeader_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationHeader(title1: "Welcome To Ivy!", title2: "Please Login So You Can Access This Feature")
    }
}
