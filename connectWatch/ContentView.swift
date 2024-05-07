//
//  ContentView.swift
//  connectWatch
//
//  Created by Muhammad Ramadhan on 03/05/24.
//

import SwiftUI
import WatchConnectivity

struct ContentView: View {
    
    var body: some View {
                Spacer()
                VStack {
                    Button("Open Camera") {
                        if WCSession.default.isReachable {
                            WCSession.default.sendMessage(["action": "openCamera"], replyHandler: nil, errorHandler: nil)
                        }
                    }
                }
                .padding()
    }
}

#Preview {
    ContentView()
}
