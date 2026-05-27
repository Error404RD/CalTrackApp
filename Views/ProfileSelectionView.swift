//
//  ProfileSelectionView.swift
//  CalTrack
//
//  Created by Jose Miguel Lopez on 27/5/26.
//

import SwiftUI
import SwiftData

struct ProfileSelectionView: View {
    
    var onProfileSelected: () -> Void
    
    @Environment(\.modelContext) private var context
    @Query private var profiles: [UserProfile]
    
    var body: some View {
        ZStack {
            
            Color.inkBlack
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                Text("Select Profile")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.alabasterGrey)
                    .padding(.top, 40)
                
                ScrollView {
                    VStack(spacing: 16) {
                        
                        ForEach(profiles) { profile in
                            
                            profileCard(profile)
                                .onTapGesture {
                                    setActive(profile)
                                }
                        }
                    }
                    .padding()
                }
                
                Button {
                    // luego creamos pantalla de crear perfil
                } label: {
                    Text("Create New Profile")
                        .fontWeight(.bold)
                        .foregroundColor(.alabasterGrey)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.duskBlue)
                        .cornerRadius(16)
                }
                .padding()
            }
        }
    }
    
    // MARK: - Card UI
    
    @ViewBuilder
    private func profileCard(_ profile: UserProfile) -> some View {
        
        HStack {
            
            VStack(alignment: .leading, spacing: 6) {
                
                Text(profile.name)
                    .font(.headline)
                    .foregroundColor(.alabasterGrey)
                
                Text("\(profile.age) years • \(profile.gender)")
                    .font(.subheadline)
                    .foregroundColor(.lavenderGrey)
            }
            
            Spacer()
            
            if profile.isActive {
                Text("Active")
                    .font(.caption)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 4)
                    .background(Color.duskBlue)
                    .foregroundColor(.alabasterGrey)
                    .cornerRadius(8)
            }
        }
        .padding()
        .background(Color.prussianBlue)
        .cornerRadius(16)
    }
    
    // MARK: - Actions
    
    private func setActive(_ profile: UserProfile) {
        
        for p in profiles {
            p.isActive = false
        }
        
        profile.isActive = true
        
        do{
            try context.save()
            
            onProfileSelected()
        } catch {
            print(error.localizedDescription)
        }
        
        try? context.save()
    }
}
