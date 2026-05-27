//
//  RootView.swift
//  CalTrack
//
//  Created by Jose Miguel Lopez on 27/5/26.
//

import SwiftUI
import SwiftData

struct RootView: View {
    @Query private var profiles: [UserProfile]
    
    var body: some View {
        
        if profiles.isEmpty {
            OnboardingView()
        } else{
            HomeView()
        }
    }
}

#Preview {
    RootView()
}
