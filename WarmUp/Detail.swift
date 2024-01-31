//
//  Detail.swift
//  WarmUp
//
//  Created by KYUCHEOL KIM on 1/31/24.
//

import SwiftUI

struct Detail: View {
    
    @Binding var showModal: Bool
    
    var body: some View {
        Text("Modal Page")
        Button{
            showModal = false
        } label: {
            Text("Close")
        }
    }
}

#Preview {
    Detail(showModal: .constant(true))
}
