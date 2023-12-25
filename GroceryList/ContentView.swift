//
//  ContentView.swift
//  GroceryList
//
//  Created by Leonard McCook-Carr on 12/21/23.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var context
    @State var newItemString = ""
    
    @Query var items: [GroceryListItem]
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Add item", text: $newItemString)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Save") {
                    guard !newItemString.isEmpty else {
                        return
                    }
                    
                    let newItem = GroceryListItem(title: newItemString,
                                                  subtitle: "Buy this ASAP!",
                                                  date: Date())
                    
                    context.insert(newItem)
                    
                    newItemString = ""
                }
                
                List {
                    ForEach(items) { item in
                        Text(item.title)
                    }
                }
                .overlay {
                    if items.isEmpty {
                        Text("No Items")
                    }
                }
            }
            .navigationTitle("Grocery List")
        }
    }
}

#Preview {
    ContentView()
}
