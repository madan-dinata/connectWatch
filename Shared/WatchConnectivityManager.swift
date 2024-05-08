//
//  WatchConnectivityManager.swift
//  connectWatch
//
//  Created by Muhammad Ramadhan on 08/05/24.
//

import Foundation
import WatchConnectivity

/*
  Steps
  1. Create WCSession Variabel
  2. Initialize the session
  3. Add send function
  4. add WCSessionDelegate
  5. Conform WCSession and implement all function need
  6. Update data for the UI
  7. Add Error Handling if neccessary
 */

class WatchConnectivityManager: NSObject, ObservableObject, WCSessionDelegate { // 4
    static let shared = WatchConnectivityManager()
    
//    1
    var session: WCSession?
    
    @Published var isPlaying: Bool = false
    @Published var currentSongTitle: String = "No song"
    
//    2
    override init() {
        super.init()
        if WCSession.isSupported() {
            session = WCSession.default
            session!.delegate = self
            session!.activate()
        }
    }
    
//    3
    func send(message: [String: Any]) {
        session?.sendMessage(message, replyHandler: nil) { error in
            print("Error sending message: \(error.localizedDescription)")
        }
    }
    
//    5
#if os(iOS)
    func sessionDidBecomeInactive(_ session: WCSession) {
        
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        
    }
    #endif
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: (any Error)?) {
        print("WCSession Activation Completed: \(activationState.rawValue)")
        if let error = error {
            print("WCSession Activation Failed: \(error.localizedDescription)")
        }
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        if let isPlaying = message["isPlaying"] as? Bool {
            self.isPlaying = isPlaying
        }
        if let songTitle = message["songTitle"] as? String {
            self.currentSongTitle = songTitle
        }
    }
    
}
