//
//  habit squares test.swift
//  Ivy
//
//  Created by Dina Alhajj Ibrahim on 08/12/2022.
//

//import SwiftUI
//
//struct habit_squares_test: View {
//    private var data: [Int] = Array(1...6)
//    private let colors: [Color] = [.red, .green]
//    private let adaptiveColumns = [
//        GridItem(.adaptive(minimum: 150))
//
//    ]
//    var body: some View {
//        NavigationView {
//            ScrollView {
//                LazyVGrid(columns: adaptiveColumns, spacing: 30)   {
//                    ForEach(data, id: \.self) {number in
//                        ZStack {
//
//                            RoundedRectangle(cornerRadius: 7)
//                                .stroke(Color("ourgreen"), lineWidth: 3)
//                                .frame(width: 130, height: 130)
//                                .foregroundColor(colors[number%2])
//
//                                .cornerRadius(30)
//                            Text("\(number)")
//                                .foregroundColor(.white)
//                                .font(.system(size: 80, weight: medium, design: rounded))
//
//                        }
//
//                    }
//                    .padding()
//                    .navigationTitle("Grid Sample")
//                }
//          }
//
//       }
//    }
//            struct habit_squares_test_Previews: PreviewProvider {
//                static var previews: some View {
//                    habit_squares_test()
//                }
//    }
//}
