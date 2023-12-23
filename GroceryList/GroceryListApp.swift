//
//  GroceryListApp.swift
//  GroceryList
//
//  Created by Leonard McCook-Carr on 12/21/23.
//

import SwiftUI
import SwiftData

@main
struct GroceryListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: GroceryListItem.self)
    }
}
