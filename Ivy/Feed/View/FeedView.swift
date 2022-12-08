//
//  FeedView.swift
//  Ivy
//
//  Created by Fatma Gazwani on 13/05/1444 AH.
//

import SwiftUI

struct FeedView: View {
    @State private var ShowNewPostView = false
    @State private var selectedFilter: PostFilterViewModel = .trending
    @Namespace var animation
    var body: some View {
        
        VStack{
            
            HStack{
                ForEach(PostFilterViewModel.allCases, id: \.rawValue){ item in
                    VStack{
                        Text(item.title)
                            .foregroundColor(Color("ourgreen"))
                            .font(.headline)
                            .fontWeight(selectedFilter == item ? .semibold: .regular)
                        //   .foregroundColor(selectedFilter == item .black,: .gray)
                        if selectedFilter == item {
                            Capsule()
                                .foregroundColor(Color("ourgreen"))
                                .frame(height: 3)
                                .matchedGeometryEffect(id: "filter", in: animation)
                            
                        } else {
                            Capsule()
                                .foregroundColor(Color(.clear))
                                .frame(height: 3)
                        }
                    }
                    .onTapGesture {
                        withAnimation(.easeInOut){
                            self.selectedFilter = item
                        }
                    }
                }
                
            }
            .overlay(Divider() .offset (x: 0 ,y: 20))
            
            ZStack (alignment: .bottomTrailing){
                ScrollView{
                    LazyVStack {
                        ForEach(0 ... 20, id: \.self){_ in
                            PostsRawView()
                            
                        }
                        
                    }
                }
                Button{
                    ShowNewPostView.toggle()
                }label:{
                    Image("plus.bubble.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                        .foregroundColor(Color("ourdarkgray"))
                        .padding()
                }
                .padding()
                .fullScreenCover(isPresented: $ShowNewPostView) {
                    NewPostView()
                       
                }
            }
        }
        
    }
}
    
    struct FeedView_Previews: PreviewProvider {
        static var previews: some View {
            FeedView()
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("ouroffwhite")/*@END_MENU_TOKEN@*/)
        }
    }

