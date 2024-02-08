//
//  FirstList.swift
//  WarmUp
//
//  Created by KYUCHEOL KIM on 2/8/24.
//

import SwiftUI

struct FirstList: View {
    var body: some View {
        NavigationStack {
            List{
                NavigationLink {
                    Text("navLink1")
                } label: {
                    Text("1")
                }
                Text("2")
                Text("3")
            }
            .navigationTitle("List")
        }
    }
}

#Preview {
    FirstList()
}
