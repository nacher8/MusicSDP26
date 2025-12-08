//
//  MusicLogo.swift
//  MusicSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 8/12/25.
//

import SwiftUI

struct MusicLogo: View {
    private let columns = Array(repeating: GridItem(.flexible(), spacing: 8), count: 6)
    
    var body: some View {
        VStack(spacing: 20) {
            Circle()
                .fill(.white)
                .strokeBorder(Color.orange, lineWidth: 40)
                .strokeBorder(Color.red.opacity(0.3), lineWidth: 20)
                .frame(height: 200)
                .overlay {
                    Image(systemName: "music.note")
                        .resizable()
                        .frame(width: 40, height: 60)
                }
            
            ZStack {
                LazyVGrid(columns: columns, spacing: 8) {
                    ForEach(0..<18) { _ in
                        Capsule()
                            .fill(Color.gray.opacity(0.8))
                    }
                }
                .padding(.horizontal, 30)
                
                RoundedRectangle(cornerRadius: 10)
                                .fill(.white)
                                .frame(width: 10, height: 70)
                                .shadow(radius: 4)
            }
        }
    }
}

#Preview {
    MusicLogo()
}
