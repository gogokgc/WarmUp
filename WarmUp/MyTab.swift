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
//            Text("Tab Content 1")
            TabDetail()
                .badge("!")
                .tabItem {
                    Label("Label1", systemImage: "gear")
                }.tag(1)
//            Text("Tab Content 2")
            Onboarding()
                .badge(2)
                .tabItem {
                    Label("Label2", systemImage: "gear.circle")
                }.tag(2)
            ListLoop()
                .tabItem {
                    Label("Label3", systemImage: "pencil.circle")
                }.tag(3)
        }
//        .tabViewStyle(.page)
//        .tabViewStyle(.automatic)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .background(.gray)
    }
}

#Preview {
    MyTab()
}
