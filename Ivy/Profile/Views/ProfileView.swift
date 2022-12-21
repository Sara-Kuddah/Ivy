//
//  ProfileView.swift
//  tiwtterSwiftUI
//
//  Created by Sara Khalid BIN kuddah on 21/05/1444 AH.
//

import SwiftUI
import CloudKit

struct ProfileView: View {
    @State private var GoToSting = false
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Namespace var animation
    
    @State var corentUser = ""
//    corentUser["name"] = "Jumana Khaled"
//    corentUser["bio"] = "bio"
//    corentUser["imageURL"] = "na"
 //   @State var feeds : [Feed] = []
   // @State var points : [Point] = []
//    @State var badges : [Badge] = []
    @State var images = ["saveEarth", "energySaving", "ecoWater"]
    @State var points  = [[50,100], [20,100], [130,200], [90,100]]
    //    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View{
        
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
//        .onAppear{
//            fetchUser()
////            fetchFeed()
////            fetchPoint()
////            fetchBadge()
////            //addFeed()
//        }
    }
    //View Model
//     func fetchUser(){
//        let container = CKContainer(identifier: "iCloud.com.thedreamers.ivy")
//        let predicateAll = NSPredicate(value: true)
//        let predicateJumana = NSPredicate(format: "name ==%@", "Jumana Khaled")
//        let query = CKQuery(recordType: "User", predicate: predicateJumana)
//
//        let operations = CKQueryOperation(query: query)
//        operations.recordMatchedBlock = {  recordId, result in
////            case .success( let records):
////            let learner = Learner(record: records)
////            self.learners.append(learner)
//            switch result {
//            case .success( let records):
//                let user = User(record: records)
//                self.corentUser =  "\(user.firstName) \(user.lastName)"
//            case .failure( let error):
//                print(error.localizedDescription)
//            }
//        }
//        container.publicCloudDatabase.add(operations)
//    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(  )
        
    }
}
    //Model=====

//    struct User: Identifiable {
//
//        let id: CKRecord.ID
//        let userId : String
//        let firstName : String
//        let lastName : String
//        let email : String
//        let bio : String
//        let userImage: UIImageAsset
//        let feedText: [String]
//        let feedImage: [UIImage]
//        let pointName: [String]
//        let pointTotal: [Int]
//        let pointGained: [Int]
//        let badgeName: [String]
//        let badgeImage: [UIImage]
//
//
//
//
//        init(record:CKRecord) {
//            self.id = record.recordID
//            self.userId = record["userId"]  as? String ?? "N/A"
//            self.firstName = record["firstName"]  as? String ?? "N/A"
//            self.lastName = record["lastName"]  as? String ?? "N/A"
//            self.email = record["email"]  as? String ?? "N/A"
//            self.bio = record["bio"] as? String ?? "N/A"
//            self.userImage = record["userImage"] as? UIImageAsset ??  UIImage(named:"profile")?.jpegData(compressionQuality: 1.0)
//            self.feedText = []
//            self.feedImage = []
//            self.pointName = []
//            self.pointTotal = []
//            self.pointGained = []
//            self.badgeName = []
//            self.badgeImage = []
//        }
//
//    }
//struct Feed: Identifiable {
//
//    let id: CKRecord.ID
//    let text : String
//    let imageURL: String
//    let user : CKRecord.Reference
//    //CKRecord.Reference
//   //, refrence
//    init(record:CKRecord , user:CKRecord.Reference) {
//        self.id = record.recordID
//        self.imageURL = record["imageURL"]  as? String ?? "N/A"
//
//        self.user = CKRecord.Reference(recordID: user.recordID, action: <#CKRecord.ReferenceAction#>)
//    }
//
//}
//struct Point: Identifiable {
//
//    let id: CKRecord.ID
//    let name : String
//    let total: Int
//    let gained: Int
//    let user : CKRecord.Reference
//
//    init(record:CKRecord, user:CKRecord.Reference) {
//        self.id = record.recordID
//        self.name = record["text"]  as? String ?? "N/A"
//        self.total = record["total"] as? Int ?? 100
//        self.gained = record["gained"] as? Int ?? 0
//        self.user = user
//
//    }
//
//}
//struct Badge: Identifiable {
//    let id: CKRecord.ID
//    let name : String
//    let imageURL: String
//    let user : CKRecord.Reference
//
//    init(record:CKRecord, user:CKRecord.Reference) {
//        self.id = record.recordID
//        self.name = record["text"]  as? String ?? "N/A"
//        self.imageURL = record["imageURL"]  as? String ?? "N/A"
//        self.user = user
//    }
    
//}
    //==========
//(alignment: .bottomLeading)
extension ProfileView{
    var headerView: some View{
        ZStack{
            Color("ourlightgreen")
                .ignoresSafeArea()
            
            VStack (alignment: .leading){
                Spacer(minLength: 70)
                HStack {
                  //  Spacer()
//                    Button {
//
//                    } label: {
//                        Image(systemName: "arrow.left")
//                            .resizable()
//                            .frame(width: 20, height: 16)
//                            .foregroundColor(.white)
//                           // .offset(x: -15, y: 15)
//                    }
//                    Button(action: {
//                               self.presentationMode.wrappedValue.dismiss()
//                            }) {
//                                Image(systemName: "arrow.left")
//                                   // .padding()
//                                    .resizable()
//                                                                .frame(width: 20, height: 16)
//                                                                .foregroundColor(.white)
//                                                               // .offset(x: -15, y: 15)
//                            }
//                            .navigationBarBackButtonHidden(true)
                                   
                    Spacer()
                    Button {
                        GoToSting.toggle()
                    } label: {
                        Image(systemName: "gearshape.fill")
                        //                        .font(.title3)
                        //                        .padding(6)
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                           // .offset(x: 250, y: 20)
                    }
                    .fullScreenCover(isPresented: $GoToSting){
                        Ivy.SettingView()
                    }
                    //Spacer()
                }
                .padding(.horizontal)
                
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 130, height: 130)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(Color.white, lineWidth: 1))
//                Circle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
                .offset(x: 30,y : 20)
            }
        }
        .frame(height: 100)
        .padding(.bottom)
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
                //Spacer()
                Text("Total Points :")
                    .font(.title).bold()
                    .foregroundColor(Color("ourlightgreen"))
                Spacer()
                Text("\(points[0][0]+points[1][0]+points[2][0]+points[3][0])")
                    .font(.title).bold()
                    .foregroundColor(Color("ourlightgreen"))
                //Spacer()
            }.padding()
                .padding(.horizontal)
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
