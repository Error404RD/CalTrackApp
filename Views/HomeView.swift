//
//  HomeView.swift
//  CalTrack
//
//  Created by Jose Miguel Lopez on 27/5/26.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    @Query private var profiles: [UserProfile]
    
    var user: UserProfile? {
        profiles.first
    }
    
    var dailyCalories: Double {
        guard let user else { return 0 }
        
        return CaloriesCalculatorService
            .calculateDailyCalories(for: user)
    
    }
    
    var body: some View {
        ZStack{
            
            Color.inkBlack
                .ignoresSafeArea()
            
            VStack(spacing: 24){
                
                VStack(spacing: 8) {
                    Text("Welcome")
                        .font(.title2)
                        .foregroundColor(.lavenderGrey)
                    
                    Text(user?.name ?? "")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.alabasterGrey)
                }
                
                VStack(spacing: 16) {
                    caloriesCard(
                        title: "Daily Calories",
                        value: dailyCalories
                    )
                    
                    caloriesCard(
                        title: "Consumed",
                        value: 0
                    )
                    
                    caloriesCard(
                        title: "Remaining",
                        value: dailyCalories
                    )
                }
                
                Spacer()
            }
            .padding()
        }
        
        
    }
    
    @ViewBuilder
    private func caloriesCard(title: String, value: Double) -> some View {
        
        VStack(spacing: 8) {
            
            Text(title)
                .font(.headline)
                .foregroundColor(.lavenderGrey)
            
            Text("\(Int(value)) kcal")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.alabasterGrey)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.prussianBlue)
        .cornerRadius(20)
    }
}

#Preview {
    HomeView()
}
