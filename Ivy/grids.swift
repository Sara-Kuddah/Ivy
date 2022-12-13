//
//  grids.swift
//  Ivy
//
//  Created by Dina Alhajj Ibrahim on 13/12/2022.
//

import SwiftUI

struct grids: View {
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 150))

    ]
    let columns: [GridItem] = [
//        GridItem(. fixed(50) , spacing: nil, alignment: .center),
//
//        GridItem(. fixed (50), spacing: nil, alignment: .center),
//
//        GridItem(.fixed(50), spacing: nil, alignment:.center),
//
//        GridItem(.fixed(50), spacing: nil, alignment: .center),
//
//        GridItem(. fixed (50), spacing: nil, alignment: .center),
        
            GridItem(spacing: 100, alignment: .center),
            GridItem(spacing: 100, alignment: .center),
            GridItem(spacing: 100, alignment: .center),
            GridItem(spacing: 100, alignment: .center),
            GridItem(spacing: 100, alignment: .center),
            GridItem(spacing: 100, alignment: .center),

                
    ]
    var body: some View {
        LazyVGrid(columns: adaptiveColumns, spacing: 30)  {
            ForEach(0..<6) {index in
                HStack(alignment: .center){
                    RoundedRectangle(cornerRadius: 7)
                        .frame(width: 115, height: 115)
                }
                .padding(.horizontal)

            }

        }
    }
        struct grids_Previews: PreviewProvider {
            static var previews: some View {
                grids()
            }
        }
    }
