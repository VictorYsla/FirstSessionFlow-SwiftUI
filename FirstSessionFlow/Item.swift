//
//  Item.swift
//  FirstSessionFlow
//
//  Created by Victor Fernando Gallardo Ysla on 24/03/24.
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
