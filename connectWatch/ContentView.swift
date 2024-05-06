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
        //        Spacer()
        //        VStack {
        //            Button("Open Camera") {
        //                if WCSession.default.isReachable {
        //                    WCSession.default.sendMessage(["action": "openCamera"], replyHandler: nil, errorHandler: nil)
        //                }
        //            }
        //        }
        //        .padding()
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 139, height: 5)
                .background(.black)
                .cornerRadius(25)
            VStack(alignment: .center, spacing: 86) {
                VStack(alignment: .center, spacing: 18) {
                    // Large Title/Emphasized
                    Text("Welcome to \n Meal Mission")
                        .font(
                            Font.custom("SF Pro", size: 34)
                                .weight(.bold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .center)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 390, height: 441)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                    Text("\"Meet Zog, your meal friend who needs your help to manage his GERD with timely meals.\"")
                        .font(
                            Font.custom("Barlow", size: 16)
                                .weight(.medium)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .top)
                VStack(alignment: .center, spacing: 11) {
                    HStack(alignment: .top, spacing: 9) {
                        Image("Ellipse 1")
                            .frame(width: 8, height: 8)
                            .background(Color(red: 0.46, green: 0.46, blue: 0.46))
                        Image("Ellipse 2")
                            .frame(width: 8, height: 8)
                            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        Image("Ellipse 3")
                            .frame(width: 8, height: 8)
                            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                    }
                    .padding(0)
                    Button(action: {
                        // Action for the button
                    }) {
                        Text("Next")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .top)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 0)
            .frame(width: 393, height: 783, alignment: .top)
        }
        .frame(width: 393, height: 852)
        .background(.white)
    }
}

#Preview {
    ContentView()
}
