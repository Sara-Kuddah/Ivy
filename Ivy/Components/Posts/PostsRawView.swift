//
//  PostsRawView.swift
//  Ivy
//
//  Created by Fatma Gazwani on 13/05/1444 AH.
//

import SwiftUI

struct PostsRawView: View {
    var body: some View {
        VStack (alignment: .leading){
            //Profile + user info + post
            HStack(alignment: .top, spacing: 12){
                    Circle()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color(.systemRed))
                //User info + Post
                VStack (alignment: .leading, spacing: 4){
                    //user infor
                    HStack {
                        Text("Dreamers")
                            .font(.subheadline).bold()
                        
                        Text("@dreamers")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2 w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    //post
                    Text("For our environment's revival")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            //Action buttons
            HStack{
                Button{
                    //action goes here
                }label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button{
                    //action goes here
                }label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button{
                    //action goes here
                }label: {
                    Image(systemName: "square.and.arrow.up")
                        .font(.subheadline)
                }
                

              
            }
            .padding()
            .foregroundColor(.gray)
            Divider()

        }
        .padding()
        
        
    }
}

struct PostsRawView_Previews: PreviewProvider {
    static var previews: some View {
        PostsRawView()
    }
}
