//
//  Recipe.swift
//  MyRecipes
//
//  Created by Melina Hosseinzadeh on 20/11/2026.
//

import Foundation

struct Recipe: Identifiable {
    let id = UUID()
    var name: String
    var ingredients: [String]
    var instructions: [String]
    var cookingTime: Int
    var category: String
}
