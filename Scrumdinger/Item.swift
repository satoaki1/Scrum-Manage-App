//
//  Item.swift
//  Scrumdinger
//
//  Created by 石原聡明 on 2024/04/17.
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
