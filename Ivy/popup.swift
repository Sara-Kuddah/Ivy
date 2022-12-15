//
//  popup.swift
//  Ivy
//
//  Created by Dina Alhajj Ibrahim on 15/12/2022.
//

import SwiftUI
struct PopUpWindow: View {
 var title: String
var message: String
var buttonText: String
@Binding var showPopover: Bool
var body: some View {
ZStack {

// PopUp background color
Color.black.opacity(showPopover ? 0.3 : 0).edgesIgnoringSafeArea(.all)
// PopUp Window
VStack(alignment: .center, spacing: 0) {
HStack{
Button {

showPopover = false
} label: {
Image(systemName: "xmark").resizable().frame(width: 16, height: 16)
.foregroundColor(.black)

}
}.frame(maxWidth: .infinity, alignment: .leading).padding(.bottom, 10)
 Image("44")
 Text("Personal Progress ")
Text("You will gain 10 points.").padding(.bottom, 10)

 Button(action: {
// Dismiss the PopUp
withAnimation(.linear(duration: 0.3)) {
showPopover = false
}
}, label: {
Text("Add to calender")
 .padding(.horizontal, 40)
.frame(height: 54, alignment: .center)
.foregroundColor(Color.black)
.background(Color("thiscol"))
.font(Font.system(size: 23, weight: .semibold))
 }).buttonStyle(PlainButtonStyle()).cornerRadius(20)
}
 .frame(maxWidth: 300).padding()
.background(.white).cornerRadius(20)
}

}
}
struct PopUpWindow_Previews: PreviewProvider {
 static var previews: some View {
PopUpWindow(title: "Error", message: "Sorry, that email address is already used!", buttonText: "OK", showPopover: Binding<Bool>.constant(true))
}
}
