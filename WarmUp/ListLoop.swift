//
//  ListLoop.swift
//  WarmUp
//
//  Created by KYUCHEOL KIM on 1/19/24.
//

import SwiftUI

struct Fruit: Hashable {
    let name: String
    let matchF: String
    let price: Int
}

struct ListLoop: View {
    
    var listvars = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    var favFruits = [
        Fruit(name: "Apple",
              matchF: "Banana",
              price: 1000),
        
        Fruit(name: "Peach",
              matchF: "Apple",
              price: 3000),
        
        Fruit(name: "WaterMelon",
              matchF: "salt",
              price: 10000)
        
    ]
    
    var body: some View {
        NavigationStack {
            List {
//                Text("1")
//                Text("2")
//                Text("3")
//                Text("4")
//                Text("5")
//                Text("6")
//                Text("7")
//                Text("8")
//                Text("9")
//                Text("10")
//                Text("11")
                ForEach(favFruits, id: \.self) { fruit in
                    VStack(alignment: .leading) {
                        Text("name : \(fruit.name)")
                        Text("matchF : \(fruit.matchF)")
                        Text("price : \(fruit.price)")
                    }
                }
            }
            .navigationTitle("ListView")
        }
        
    }
}

#Preview {
    ListLoop()
}
