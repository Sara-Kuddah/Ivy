//
//  habit squares .swift
//  Ivy
//
//  Created by Dina Alhajj Ibrahim on 08/12/2022.
//

import SwiftUI

struct habit_squares_: View {
    var body: some View {
        Rectangle()
            .fill(.red)
            .frame(width: 100, height: 100)
            .cornerRadius(8)
    }
}

struct habit_squares__Previews: PreviewProvider {
    static var previews: some View {
        habit_squares_()
    }
}
