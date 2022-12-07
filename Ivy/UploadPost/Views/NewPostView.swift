//
//  NewPostView.swift
//  Ivy
//
//  Created by Fatma Gazwani on 13/05/1444 AH.
//

import SwiftUI

struct NewPostView: View {

    @State private var caption = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            HStack{
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color("ourgreen"))

                }
                Spacer()
                Button {
                    print("Post")
                } label: {
                    Text("Post")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("ourgreen")/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("ouroffwhite"))
                        .clipShape(Capsule())
                }
            }
            .padding()
            
            
            HStack(alignment: .top){
                Circle()
                    .frame(width: 70, height: 70)
                
                TextArea("What did you do?", text: $caption)

            }
            .padding()
            
        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
