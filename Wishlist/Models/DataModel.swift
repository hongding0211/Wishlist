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
    
    private var avatarUrlWithHttps: String {
        if (avatar.hasPrefix("http:")) {
            return avatar.replacingOccurrences(of: "http:", with: "https:")
        }
        return avatar
    }
    
    func getAvatarUrl(width: Int) -> URL? {
        return URL(string: getOptimizedOssImageUrl(url: avatarUrlWithHttps, width: width))
    }
}
