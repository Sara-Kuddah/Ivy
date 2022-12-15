//
//  image.swift
//  Ivy
//
//  Created by Dina Alhajj Ibrahim on 14/12/2022.
//

import SwiftUI

struct image: View {
    var body: some View {
        
        ZStack {
            
            Color(.gray)
                .ignoresSafeArea()
            Image("pic1")
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 130, height: 130)
                .background(Color.white)
                .cornerRadius(7)
                .padding(.bottom, 230)
                .padding(.trailing, 160)
                
            Image("pic2")
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 130, height: 130)
                .background(Color.white)
                .cornerRadius(7)
                .padding(.bottom, 230)
                .padding(.leading, 160)
            
            Image("pic3")
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 130, height: 130)
                .background(Color.white)
                .cornerRadius(7)
                .padding(.top, 120)
                .padding(.leading, 160)
            
            Image("pic4")
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 130, height: 130)
                .background(Color.white)
                .cornerRadius(7)
                .padding(.top, 120)
                .padding(.trailing, 160)
            
            Image("pic5")
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 130, height: 130)
                .background(Color.white)
                .cornerRadius(7)
                .padding(.top, 470)
                .padding(.leading, 160)
            
            Image("pic6")
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 130, height: 130)
                .background(Color.white)
                .cornerRadius(7)
                .padding(.top, 470)
                .padding(.trailing, 160)
        }
    }
}
struct image_Previews: PreviewProvider {
    static var previews: some View {
        image()
    }
}
