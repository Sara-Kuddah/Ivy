//
//  ProfileView.swift
//  tiwtterSwiftUI
//
//  Created by Sara Khalid BIN kuddah on 21/05/1444 AH.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Namespace var animation
    @State var images = ["saveEarth", "energySaving", "ecoWater"]
    @State var points  = [[50,100], [20,100], [130,200], [90,100]]
    var body: some View {
       
        VStack(alignment: .leading){
            headerView
            
            userInfoDetails
                
            tweetFilterBar
            switch selectedFilter{
            case .tweets:
                pointsView
            case .replies:
                repliesView
            case .likes:
                tweetsView
            }
            
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView{
    var headerView: some View{
        ZStack(alignment: .bottomLeading){
            Color("ourlightgreen")
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.left")
                            .resizable()
                            .frame(width: 20, height: 16)
                            .foregroundColor(.white)
                            .offset(x: -15, y: 15)
                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "gearshape.fill")
                        //                        .font(.title3)
                        //                        .padding(6)
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                            .offset(x: 250, y: 20)
                    }
                }

                Image("profile")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(Color.white, lineWidth: 1))
//                Circle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
                .offset(x: 30,y : 40)
            }
        }
        .frame(height: 100)
    }
    
    var userInfoDetails: some View{
        VStack(alignment: .leading ,spacing: 4){
            Text("Jomana Khaed")
                .font(.title2).bold()
                .foregroundColor(Color("ourgreen"))
            Text("@jomanakhaled")
                .font(.subheadline)
                .foregroundColor(Color("ourlightgray"))
            Text("lets provide healthy environment for us and the new generation")
                .font(.subheadline).bold()
                .foregroundColor(Color("ourlightgreen"))
                .padding(.vertical)
        }
        .offset( y: 80)
        .padding(.horizontal)
    }
    
    var tweetFilterBar: some View{
        HStack{
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue){ item in
                VStack{
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? Color("ourgreen") : Color("ourlightgreen"))
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(Color("ourgreen"))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    }else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeOut){
                        self.selectedFilter = item
                    }
                }
            }
        }
        .offset( y: 80)
        .overlay(Divider().offset(x: 0 , y: 50))
        .padding(.bottom, 73)

    }
    var tweetsView: some View{
        ScrollView{
            LazyVStack{
                ForEach(0...9, id: \.self){ _ in
                    PostsRawView()
                    //TweetRowView()
                        .padding()
                }
                
            }
        }
       
    }
    
    var pointsView: some View{
        VStack{
            HStack{
                Spacer()
                Text("Total Points :")
                    .font(.title).bold()
                    .foregroundColor(Color("ourlightgreen"))
                Spacer()
                Text("\(points[0][0]+points[1][0]+points[2][0]+points[3][0])")
                    .font(.title).bold()
                    .foregroundColor(Color("ourlightgreen"))
                Spacer()
            }.padding()
            ScrollView{
                LazyVStack{
                    ForEach(points.indices, id: \.self){ index in
                        VStack {
                            HStack{
                                Text("Habit No\(index+1)")
                                    .font(.title3).bold()
                                    .foregroundColor(Color("ourgreen"))
                                Text("\(points[index][0])/\(points[index][1])")
                                    .font(.subheadline).italic()
                                    .foregroundColor(Color("ourlightgreen"))
                                Spacer()
                            }
                            ProgressView( value: Double(points[index][0]),
                                          total: Double(points[index][1]))
                            .tint((Color("ourgreen")))
                        }
                        .padding()
                        
                    }
                    
                }
            }
        }
                }
    var repliesView: some View{
        ScrollView{
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 4), count: 3), content: {
                ForEach(images, id: \.self){ image in
                    Image(image)
                        .resizable()
                        .frame(width: 80, height: 80)
                        .clipShape(Rectangle())
                        .overlay(Rectangle()
                            .stroke(Color.white, lineWidth: 2))
                        .padding()
                }
            })
                }
                
                }
                
      
}
