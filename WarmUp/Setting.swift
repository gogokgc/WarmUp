//
//  Setting.swift
//  WarmUp
//
//  Created by KYUCHEOL KIM on 1/25/24.
//

import SwiftUI

struct SettingInfo: Hashable {
    let title: String
    let imagename: String
    let backgrounColor: Color
    let foregroundColor: Color = .white
}

struct Setting: View {
    var body: some View {
        
        let data: [[SettingInfo]] = [
            [SettingInfo(title: "스크린타임",
                        imagename: "hourglass",
                        backgrounColor: .indigo)],
            [SettingInfo(title: "일반",
                        imagename: "gear",
                        backgrounColor: .gray),
            SettingInfo(title: "손쉬운사용",
                        imagename: "person.circle",
                        backgrounColor: .blue),
            SettingInfo(title: "개인정보 보호 및 보안",
                        imagename: "hand.raised.square",
                        backgrounColor: .blue)],
            [SettingInfo(title: "암호",
                        imagename: "key.fill",
                        backgrounColor: .gray)],
        ]
        
        NavigationStack {
            List {
                
                ForEach(data, id: \.self) { item in
                    Section{
                        ForEach(item, id: \.self) { section in
                            Label(
                                title: { Text(section.title) },
                                icon: { Image(systemName: section.imagename)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .padding(.all, 7)
                                        .background(section.backgrounColor)
                                        .foregroundColor(section.foregroundColor)
                                        .cornerRadius(6)
                                    
                                }
                            )
                        }
                    }
                }
                
//                Section{
//                    Label(
//                        title: {
//                            Text("스크린타임")
//                        },
//                        icon: {
//                            Image(systemName: "hourglass")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20, height: 20)
//                                .padding(.all, 7)
//                                .background(.indigo)
//                                .foregroundColor(.white)
//                                .cornerRadius(6)
//                        }
//                    )
//                }
//                
//                Section{
//                    Label(
//                        title: {
//                            Text("일반")
//                        },
//                        icon: {
//                            Image(systemName: "gear")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20, height: 20)
//                                .padding(.all, 7)
//                                .background(.gray)
//                                .foregroundColor(.white)
//                                .cornerRadius(6)
//                        }
//                    )
//                    Label(
//                        title: {
//                            Text("손쉬운 사용")
//                        },
//                        icon: {
//                            Image(systemName: "person.circle")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20, height: 20)
//                                .padding(.all, 7)
//                                .background(.blue)
//                                .foregroundColor(.white)
//                                .cornerRadius(6)
//                        }
//                    )
//                    Label(
//                        title: {
//                            Text("개인정보 보호 및 보안")
//                        },
//                        icon: {
//                            Image(systemName: "hand.raised.square")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20, height: 20)
//                                .padding(.all, 7)
//                                .background(.blue)
//                                .foregroundColor(.white)
//                                .cornerRadius(6)
//                        }
//                    )
//                }
//                
//                Section{
//                    Label(
//                        title: {
//                            Text("암호")
//                        },
//                        icon: {
//                            Image(systemName: "key.fill")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20, height: 20)
//                                .padding(.all, 7)
//                                .background(.gray)
//                                .foregroundColor(.white)
//                                .cornerRadius(6)
//                        }
//                    )
//                }
            }
            .navigationTitle("설정")
        }
        
    }
}

#Preview {
    Setting()
}
