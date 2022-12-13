//
//  SwiftUIView.swift
//  Ivy
//
//  Created by Dina Alhajj Ibrahim on 12/12/2022.
//

import SwiftUI

struct SwiftUIView: View {
    
    let spacing: CGFloat = 10
    
    var body: some View {
        HStack(alignment: .top, spacing: spacing) {
            LazyVStack(spacing: spacing) {
                ForEach(0 ..< 30) { _ in
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(height: CGFloat.random(in: 20, ...200))
                }
            }
            LazyVStack(spacing: spacing) {
                ForEach(0 ..< 30) { _ in
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(height: CGFloat.random(in: 20, ...200))
                }
            }
        }
        .padding(.horizontal)
    }
        struct SwiftUIView_Previews: PreviewProvider {
            static var previews: some View {
             ContentView()
            }
        }
    }
