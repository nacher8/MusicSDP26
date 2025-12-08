//
//  ImageButton.swift
//  MusicSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 8/12/25.
//

import SwiftUI

struct ImageButton: View {
    let image: String
    var size: CGFloat
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: image)
                .resizable()
                .frame(width: size, height: size)
                .foregroundColor(Color.white)
        }

    }
}

#Preview {
    ImageButton(image: "heart", size: 20) {
        print("Pulsado")
    }
}
