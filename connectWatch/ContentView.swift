//
//  ContentView.swift
//  connectWatch
//
//  Created by Muhammad Ramadhan on 03/05/24.
//

import SwiftUI
import WatchConnectivity

struct ContentView: View {
    @StateObject var connectivityManager = WatchConnectivityManager.shared
    
    var body: some View {
        VStack {
            Button {
                // send message using watch connectivity
                let newState = !connectivityManager.isPlaying
                connectivityManager.send(message: ["isPlaying": newState])
                connectivityManager.isPlaying = newState
            } label : {
                Image(systemName: connectivityManager.isPlaying ? "pause.circle.fill" : "play.circle.fill")
                    .resizable()
                    .frame(width: 70, height: 70)
            }
            
            Text("Now Playing")
            Text(connectivityManager.currentSongTitle)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
