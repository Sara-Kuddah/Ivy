//
//  MainTabView.swift
//  Ivy
//
//  Created by Fatma Gazwani on 14/05/1444 AH.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 1
    var body: some View {
        
        TabView(selection: $selectedIndex){
            ContentView()
                .onTapGesture {
                    self.selectedIndex = 0
                }
                .tabItem{
                    Image(systemName: "leaf")
                }.tag(0)
            
            FeedView()
                .onTapGesture {
                    self.selectedIndex = 1
                }
                .tabItem{
                    Image(systemName: "rectangle.3.group.bubble.left")
                }.tag(1)
            
            Notification()
                .onTapGesture {
                    self.selectedIndex = 2
                }
                .tabItem{
                    Image(systemName: "bell")
                }.tag(2)
            
            LoginView()
                .onTapGesture {
                    self.selectedIndex = 3
                }
                .tabItem{
                    Image(systemName: "person")
                }.tag(3)
        }
        


    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
