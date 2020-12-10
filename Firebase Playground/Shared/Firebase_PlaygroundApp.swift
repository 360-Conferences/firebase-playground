//
//  Firebase_PlaygroundApp.swift
//  Shared
//
//  Created by Shane Cowherd on 12/9/20.
//

import SwiftUI
import Firebase

@main
struct Firebase_PlaygroundApp: App {
    
    init() {
      FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
