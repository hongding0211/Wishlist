//
//  Item.swift
//  Wishlist
//
//  Created by hong on 2024/1/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
