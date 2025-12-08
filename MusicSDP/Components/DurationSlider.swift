//
//  DurationSlider.swift
//  MusicSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 8/12/25.
//

import SwiftUI

struct DurationSlider: View {
    @Binding var progress: Double
    
    var body: some View {
        VStack(alignment: .leading) {
            Slider(value: $progress, in: 0...100)
                .tint(Color.pink)
            
            HStack {
                Text("1:23")
                Spacer()
                Text("3:45")
            }
            .font(.caption)
            .foregroundStyle(.secondary)
        }
        .padding(.horizontal, 50)
    }
}

#Preview {
    @Previewable @State var progress: Double = 50
    DurationSlider(progress: $progress)
}
