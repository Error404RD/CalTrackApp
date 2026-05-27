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
    @State private var showHome = false
        
    var body: some View {

        ZStack {
            if showHome{
                HomeView()
                    .transition(.move(edge: .trailing).combined(with: .opacity))
            }
            else if profiles.isEmpty {
                OnboardingView()
                    .transition(.opacity)
            }
            else if profiles.first(where: {$0.isActive}) == nil {
                ProfileSelectionView(onProfileSelected: {
                    withAnimation(.easeInOut){
                        showHome = true
                    }
                })
                .transition(.move(edge: .leading).combined(with: .opacity))
            }
            else {
                HomeView()
            }
        }
        .animation(.easeInOut, value: showHome)
    }
}

#Preview {
    RootView()
}
