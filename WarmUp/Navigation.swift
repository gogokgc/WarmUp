//
//  Navigation.swift
//  WarmUp
//
//  Created by KYUCHEOL KIM on 2/1/24.
//

import SwiftUI

struct Navigation: View {
    
    let titles = ["Destination", "Destination2"]
    let descriptions = ["Move to Detail", "Move to Detail2"]
    
    @State var showModal: Bool = false
    
    var body: some View {
        
        NavigationStack {
            List{
                ForEach([0, 1], id: \.self) { index in
                    NavigationLink {
                        Text(descriptions[index])
                    } label: {
                        Text(titles[index])
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button {
                        showModal = true
                    } label: {
                        Text("Add")
                    }
                }
            }
            .sheet(isPresented: $showModal, content: {
                Text("Add Page")
            })
            .navigationTitle("Navigation")
        }
    }
}

#Preview {
    Navigation()
}
