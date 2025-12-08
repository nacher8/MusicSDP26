//
//  VolumeSlider.swift
//  MusicSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 8/12/25.
//

import SwiftUI

struct VolumeSlider: View {
    @Binding var volume: Double
    
    var body: some View {
        HStack {
            Image(systemName: "speaker.fill")
                .foregroundStyle(.black)
            Slider(value: $volume, in: 0...100)
                .tint(Color.white)
            Image(systemName: "speaker.wave.3.fill")
                .foregroundStyle(.black)
        }
        .padding(.horizontal, 50)
    }
}

#Preview {
    @Previewable @State var volume: Double = 50
    VolumeSlider(volume: $volume)
        .background(.blue)
}
