//
//  Modal.swift
//  WarmUp
//
//  Created by KYUCHEOL KIM on 1/31/24.
//

import SwiftUI

struct Modal: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        VStack{
            Text("Main Page")
            
            Button {
                showModal = true
            } label: {
                Text("Modal")
            }

        }
        .sheet(isPresented: $showModal) {
            Detail(showModal: $showModal)
        }
        
    }
}

#Preview {
    Modal()
}
