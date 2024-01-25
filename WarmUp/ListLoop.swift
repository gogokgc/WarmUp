//
//  ListLoop.swift
//  WarmUp
//
//  Created by KYUCHEOL KIM on 1/19/24.
//

//State 는 화면이 새로 그려져야하는 부분에 필요, Binding 은 State 변수에 $ 를 붙여서 사용
//붙잡고 있는 State 상태를 연결해줄떄 사용

import SwiftUI

struct Fruit: Hashable {
    let name: String
    let matchF: String
    let price: Int
}

struct ListLoop: View {
    
    var listvars = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    @State var favFruits = [
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
    
    @State var insertedName: String = ""
    
    var body: some View {
        NavigationStack {
            
            VStack{
                HStack{
                    TextField("Insert Name", text: $insertedName)
                    
                    Button {
                        favFruits.append(Fruit(name: insertedName, matchF: "none", price: 5000))
                    } label: {
                        Text("insert")
                            .padding()
                    }

                }
                List {
                    ForEach(favFruits, id: \.self) { fruit in
                        VStack(alignment: .leading) {
                            Text("name : \(fruit.name)")
                            Text("matchF : \(fruit.matchF)")
                            Text("price : \(fruit.price)")
                        }
                    }.onDelete(perform: { indexSet in
                        favFruits.remove(atOffsets: indexSet)
                    })
                }
                .navigationTitle("ListView")
            }
           
        }
        
    }
}

#Preview {
    ListLoop()
}
