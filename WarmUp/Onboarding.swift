//
//  Onboarding.swift
//  WarmUp
//
//  Created by KYUCHEOL KIM on 1/17/24.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        
        VStack(content: {
            Text("What's New in Photos")
                .font(.largeTitle)
                .bold()
                .padding(.top, 100)
            
            HStack(content: {
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 5)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Placeholder")
                        .font(.title3)
                        .bold()
                    Text("The main text is here")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }.padding(.trailing)
            })
            .padding(.vertical)
            
            HStack(content: {
                Image(systemName: "list.clipboard")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .padding(.horizontal, 5)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Placeholder")
                        .font(.title3)
                        .bold()
                    Text("The main text is here")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                .padding(.trailing)
            })
            .padding(.vertical)
            
            HStack(content: {
                Image(systemName: "square.on.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .padding(.horizontal, 5)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Placeholder")
                        .font(.title3)
                        .bold()
                    Text("The main text is here")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                .padding(.trailing)
            })
            .padding(.vertical)
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Continue")
                    .frame(width: 350)
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.bottom, 50)

        })
        
    }
}

#Preview {
    Onboarding()
}
