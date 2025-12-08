//
//  TextButton.swift
//  MusicSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 8/12/25.
//

import SwiftUI

struct TextButton: View {
    let title: String
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .foregroundStyle(.white)
                .bold()
                .padding(10)
                .background(.cyan, in: .rect(cornerRadius: 11, style: .continuous))
            
        }
    }
}

#Preview {
    TextButton(title: "Prueba", action: {
        print("Pulsado")
    })
}
