//
//  UserProfile.swift
//  CalTrack
//
//  Created by Jose Miguel Lopez on 27/5/26.
//
import Foundation
import SwiftData

@Model
class UserProfile{
    var name: String
    var birthDate: Date
    var weight: Double
    var height: Double
    var gender: String
    var ActivityLevel: Double
    
    var age: Int {
        Calendar.current.dateComponents(
            [.year],
            from: birthDate,
            to: Date()).year!
    }
    
    init(
        name: String,
        birthDate: Date,
        weight: Double,
        height: Double,
        gender: String,
        ActivityLevel: Double
    ) {
        self.name = name
        self.birthDate = birthDate
        self.weight = weight
        self.height = height
        self.gender = gender
        self.ActivityLevel = ActivityLevel
    }
}
