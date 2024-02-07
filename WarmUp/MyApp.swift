//
//  MyAp.swift
//  WarmUp
//
//  Created by KYUCHEOL KIM on 2/7/24.
//

import SwiftUI

struct MyApp: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        TabView {
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
                .tabItem {
                    Label("first", systemImage: "gear")
                }
            
            Text("second")
                .tabItem {
                    Label("second", systemImage: "gear")
                }
            
            Text("third")
                .tabItem {
                    Label("third", systemImage: "gear")
                }
            
            Text("forth")
                .tabItem {
                    Label("forth", systemImage: "gear")
                }
            
        }
        .sheet(isPresented: $showModal, content: {
            TabView {
                ZStack(content: {
                    Color.blue.ignoresSafeArea()
                    Text("onBoardind 1")
                })
                
                ZStack(content: {
                    Color.green.ignoresSafeArea()
                    Text("onBoardind 2")
                })
                
                ZStack(content: {
                    Color.gray.ignoresSafeArea()
                    VStack{
                        Text("onBoardind 3")
                        Button(action: {
                            showModal = false
                        }, label: {
                            Text("Button")
                        })
                    }
                })
            }
            .tabViewStyle(.page)
        })
        .onAppear(perform: {
            showModal = true
        })
    }
}

#Preview {
    MyApp()
}
