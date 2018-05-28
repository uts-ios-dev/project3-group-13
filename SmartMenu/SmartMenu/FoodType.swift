//
//  FoodType.swift
//  SmartMenu
//
//  Created by David Lang on 28/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import Foundation

// food type enum
enum FoodType {
    case alcoholicDrink, nonAlcoholicDrink, starter, side, main, dessert, light
    // convert to human readable string
    var description: String {
        switch self {
        case .alcoholicDrink:
            return "Alcoholic Drinks"
        case .nonAlcoholicDrink:
            return "Drinks"
        case .starter:
            return "Starters"
        case .side:
            return "Sides"
        case .main:
            return "Mains"
        case .dessert:
            return "Desserts"
        case .light:
            return "Light Meals"
        }
    }
    // automatic in Swift 4.2 when enum implements CaseIterable protocol
    static var allCases: [FoodType] {
        return [.alcoholicDrink, .nonAlcoholicDrink, .starter, .side, .main, .dessert, .light]
    }
}
