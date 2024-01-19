//
//  ListLoop.swift
//  WarmUp
//
//  Created by KYUCHEOL KIM on 1/19/24.
//

import SwiftUI

struct ListLoop: View {
    
    var listvars = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
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
                ForEach(listvars, id: \.self) { listvar in
                    Text(listvar)
                }
            }
            .navigationTitle("ListView")
        }
        
    }
}

#Preview {
    ListLoop()
}
