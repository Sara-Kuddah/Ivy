//
//  ShareView.swift
//  Ivy
//
//  Created by Fatma Gazwani on 20/05/1444 AH.
//


import SwiftUI

struct ShareView: View {
    
   var body: some View {

                
               Button(action: {
                   share()
               }) {
                   Image(systemName: "square.and.arrow.up")
                       .renderingMode(.original)
               }
 
              }
               
              func share() {
                  guard let urlShare = URL(string: "https://developer.apple.com/xcode/swiftui/") else { return }
                  let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
                     UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
              }
          }
           
struct ShareView_Previews: PreviewProvider {
    static var previews: some View {
        ShareView()
    }
}
