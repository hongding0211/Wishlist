//
//  DataModel.swift
//  Wishlist
//
//  Created by hong on 2024/2/6.
//

import Foundation

enum Sex {
    case male
    case female
}

struct User {
    let name: String
    let avatar: String
    let sex: Sex?
    let birth: UInt?
    
    func getAvatarUrl(width: Int) -> URL? {
        return URL(string: getOptimizedOssImageUrl(url: avatar, width: width))
    }
}
