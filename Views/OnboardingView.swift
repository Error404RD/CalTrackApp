//
//  OnboardingView.swift
//  CalTrack
//
//  Created by Jose Miguel Lopez on 27/5/26.
//

import SwiftUI
import SwiftData

struct OnboardingView: View {
    
    @Environment(\.modelContext) private var context
    
    @State private var name = ""
    @State private var birthDate = Date()
    @State private var weight = ""
    @State private var height = ""
    @State private var gender = "Male"
    @State private var activityLevel = 1.2
    
    let genders = ["Male", "Female"]
    
    let activityOptions: [(String, Double)] = [
        ("Sedentary", 1.2),
        ("Light", 1.375),
        ("Moderate" , 1.55),
        ("Intense", 1.725),
        ]
    
    var body: some View {
        
        ZStack {
            
            Color.inkBlack
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack(spacing: 24) {
                    
                    VStack(spacing: 8) {
                        
                        Text("Welcome")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.alabasterGrey)
                        
                        Text("Let's setup your profile")
                            .foregroundColor(.lavenderGrey)
                    }
                    .padding(.top, 40)
                    
                    VStack(spacing: 16) {
                        
                        customTextField(
                            title: "Name",
                            text: $name
                        )
                        
                        VStack(alignment: .leading, spacing: 8) {
                            
                            Text("Birth Date")
                                .foregroundColor(.lavenderGrey)
                            
                            DatePicker(
                                "",
                                selection: $birthDate,
                                displayedComponents: .date
                            )
                            .labelsHidden()
                            .frame(maxWidth: .infinity)
                            .colorScheme(.dark)
                        }
                        .padding()
                        .background(Color.prussianBlue)
                        .cornerRadius(16)
                        
                        customTextField(
                            title: "Weight (kg)",
                            text: $weight
                        )
                        .keyboardType(.decimalPad)
                        
                        customTextField(
                            title: "Height (cm)",
                            text: $height
                        )
                        .keyboardType(.decimalPad)
                        
                        customPicker(
                            title: "Gender",
                            selection: $gender,
                            options: genders
                        )
                        
                        VStack(alignment: .leading, spacing: 8) {
                            
                            Text("Activity Level")
                                .foregroundColor(.lavenderGrey)
                            
                            Picker(
                                "Activity Level",
                                selection: $activityLevel
                            ) {
                                ForEach(activityOptions, id: \.1) {
                                    option in
                                    
                                    Text(option.0)
                                        .tag(option.1)
                                }
                            }
                            .pickerStyle(.menu)
                            .frame(maxWidth: .infinity)
                            .tint(.alabasterGrey)
                        }
                        .padding()
                        .background(Color.prussianBlue)
                        .cornerRadius(16)
                    }
                    
                    Button {
                        saveProfile()
                    } label: {
                        
                        Text("Continue")
                            .fontWeight(.bold)
                            .foregroundColor(.alabasterGrey)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.duskBlue)
                            .cornerRadius(16)
                    }
                    .padding(.top, 8)
                }
                .padding()
            }
        }
    }
    
    @ViewBuilder
    private func customTextField(
        title: String,
        text: Binding<String>
    ) -> some View {
        
        VStack(alignment: .leading, spacing: 8) {
            
            Text(title)
                .foregroundColor(.lavenderGrey)
            
            TextField("", text: text)
                .padding()
                .background(Color.prussianBlue)
                .foregroundColor(.alabasterGrey)
                .cornerRadius(16)
        }
    }
    
    @ViewBuilder
    private func customPicker(
        title: String,
        selection: Binding<String>,
        options: [String]
    ) -> some View {
        
        VStack(alignment: .leading, spacing: 8) {
            
            Text(title)
                .foregroundColor(.lavenderGrey)
            
            Picker(title, selection: selection) {
                ForEach(options, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.menu)
            .frame(maxWidth: .infinity)
            .tint(.alabasterGrey)
            .padding()
            .background(Color.prussianBlue)
            .cornerRadius(16)
        }
    }
    
    private func saveProfile() {
        
        guard
            let weightValue = Double(weight),
            let heightValue = Double(height)
        else { return }
        
        let profile = UserProfile(
            name: name,
            birthDate: birthDate,
            weight: weightValue,
            height: heightValue,
            gender: gender,
            ActivityLevel: activityLevel
        )
        
        context.insert(profile)
        
        do{
            try context.save()
            print("Profile saved")
        } catch{
            print(error.localizedDescription)
        }
    }
}

#Preview {
    NavigationStack{
        OnboardingView()
    }
}
