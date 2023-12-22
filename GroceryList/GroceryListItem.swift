//
//  GroceryListItem.swift
//  GroceryList
//
//  Created by Leonard McCook-Carr on 12/22/23.
//

import Foundation
import SwiftData

@Model
class GroceryListItem {
    let title: String
    let subtitle: String
    let date: Date
    
    init(title: String, subtitle: String, date: Date) {
        self.title = title
        self.subtitle = subtitle
        self.date = date
    }
}
