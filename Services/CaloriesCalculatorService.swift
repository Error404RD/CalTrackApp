//
//  CaloriesCalculatorService.swift
//  CalTrack
//
//  Created by Jose Miguel Lopez on 27/5/26.
//

import Foundation

class CaloriesCalculatorService {
    static func calculateDailyCalories(for user: UserProfile) -> Double {
        let bmr: Double
        
        if user.gender == "Male"{
            bmr =
            (10 * user.weight)
            + (6.25 * user.height)
            - (5 * Double(user.age))
            + 5
        } else {
            bmr =
            (10 * user.weight)
            + (6.25 * user.height)
            - (5 * Double(user.age))
            + 5
        }
        
        return bmr * user.ActivityLevel
    }
}
