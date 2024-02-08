//
//  OnboardinSample.swift
//  WarmUp
//
//  Created by KYUCHEOL KIM on 2/8/24.
//

import SwiftUI

struct OnboardinSample: View {
    
    var mainText: String
    var backGroundColor: Color
    
    var body: some View {
        ZStack(content: {
            backGroundColor.ignoresSafeArea()
            Text("\(mainText)")
        })
    }
}

#Preview {
    OnboardinSample(mainText: "", backGroundColor: .blue)
}
