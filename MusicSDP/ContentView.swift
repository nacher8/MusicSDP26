//
//  ContentView.swift
//  MusicSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 8/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var progress: Double = 50
    @State private var volume: Double = 50
    @State private var isPlaying: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.darkBlue, .blue.opacity(0.3)], startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea()
            VStack {
                Text("Música")
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding(.bottom, 50)
                
                MusicLogo()
                    .padding(.bottom, 20)
                    
                DurationSlider(progress: $progress)
                
                HStack(spacing: 20) {
                    TextButton(title: "Explorar") {
                        print("Pulsado Explorar")
                    }
                    
                    TextButton(title: "Música") {
                        print("Pulsado Música")
                    }
                    
                    TextButton(title: "Listas") {
                        print("Pulsado Listas")
                    }
                }
                .padding()
                
                HStack(spacing: 20) {
                    ImageButton(image: "arrowtriangle.backward.circle", size: 50) {
                        print("Pulsado atrás")
                    }
                    
                    ImageButton(image: isPlaying ? "arrowtriangle.right.circle" : "pause.circle", size: 80) {
                        isPlaying.toggle()
                    }
                    
                    ImageButton(image: "arrowtriangle.right.circle", size: 50) {
                        print("Pulsado siguiente")
                    }
                }
                .padding()
                
                VolumeSlider(volume: $volume)
                
                Spacer()

            }
        }
    }
}

#Preview {
    ContentView()
}
