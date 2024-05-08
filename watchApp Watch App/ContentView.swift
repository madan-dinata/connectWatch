//
//  ContentView.swift
//  watchApp Watch App
//
//  Created by Muhammad Ramadhan on 06/05/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var connectivityManager = WatchConnectivityManager.shared
    
    let songs = [
        "ST-12 - Cinta",
        "Afgan - Jodoh Pasti Bertemu",
        "Judika - Tak Setuju",
        "Madan - Dia Surgaku"
    ]
    var body: some View {
        VStack {
            List(songs, id:\.self) { song in
                Button {
                    connectivityManager.send(message: ["songTitle": song, "isPlaying": true])
                    connectivityManager.currentSongTitle = song
                    connectivityManager.isPlaying = true
                } label: {
                    HStack {
                        Text(song)
                        Spacer()
                        if song == connectivityManager.currentSongTitle && connectivityManager.isPlaying {
                            Image(systemName: "pause.circle")
                        }
                    }
                }
                
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
