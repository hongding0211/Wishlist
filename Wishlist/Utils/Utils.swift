//
//  Utils.swift
//  Wishlist
//
//  Created by hong on 2024/2/6.
//

import Foundation

func getOptimizedOssImageUrl(url: String, width: Int) -> String {
    return url + "?x-oss-process=image/resize,w_\(width * 3)"
}
