//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

class Items: Identifiable {
    let imageName: String
    let itemName: String
    let quantity: Int
    
    init(imageName: String, itemName: String, quantity: Int) {
        self.imageName = imageName
        self.itemName = itemName
        self.quantity = quantity
        
    }
}

struct ContentView: View {
    
    var list1 = [
        Items (imageName: "banana", itemName: "Bananas", quantity: 3),
        Items (imageName: "apple", itemName: "Apples", quantity: 4),
        Items (imageName: "eggs", itemName: "Eggs", quantity: 12),
    ]
    
    var list2 = [
        Items (imageName: "carrot", itemName: "Carrots", quantity: 2),
        Items (imageName: "celery", itemName: "Celery", quantity: 2),
        Items (imageName: "cucumber", itemName: "Cucumber", quantity: 3)
    ]
    
    var list3 = [
        Items (imageName: "icecream", itemName: "Ice Cream", quantity: 2)
    
    ]
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(list1) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                Section(header: Text("Vegetables")) {
                    ForEach(list2) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                Section(header: Text("Other Stuff")) {
                    ForEach(list3) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
            }
            .navigationTitle("Shopping List")
        }
    }
}
