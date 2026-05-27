//
//  CalTrackApp.swift
//  CalTrack
//
//  Created by Jose Miguel Lopez on 26/5/26.
//

import SwiftUI
import SwiftData

@main
struct CalTrackApp: App {
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                RootView()
            }
        }
        .modelContainer(for: UserProfile.self)
    }
}
