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
            FirstList()
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
                OnboardinSample(mainText: "onboarding 1", backGroundColor: .gray)
               
                OnboardinSample(mainText: "onboarding 2", backGroundColor: .green)
                
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
