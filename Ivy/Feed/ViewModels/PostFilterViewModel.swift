//
//  PostFilterViewModel.swift
//  Ivy
//
//  Created by Fatma Gazwani on 13/05/1444 AH.
//

import Foundation

enum PostFilterViewModel: Int, CaseIterable {
    case trending
    case latest
    
    var title: String{
        switch self {
        case .latest: return "Latest"
        case .trending: return "Trending"
        }
    }
}
