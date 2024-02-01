//
//  MyTab.swift
//  WarmUp
//
//  Created by KYUCHEOL KIM on 2/1/24.
//

import SwiftUI

struct MyTab: View {
    var body: some View {
        TabView {
            Text("Tab Content 1")
                .badge("!")
                .tabItem {
                    Label("Label1", systemImage: "gear")
                }.tag(1)
            Text("Tab Content 2")
                .badge(2)
                .tabItem {
                    Label("Label2", systemImage: "gear.circle")
                }.tag(2)
        }
    }
}

#Preview {
    MyTab()
}
