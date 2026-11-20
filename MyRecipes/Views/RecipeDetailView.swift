//
//  RecipeDetailView.swift
//  MyRecipes
//
//  Created by Melina Hosseinzadeh on 20/11/2026.
//

import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing:24) {
                HStack {
                    Image(systemName: "clock")
                    Text("\(recipe.cookingTime) minutes")
                }
                .foregroundStyle(.secondary)
                Text("Ingredients")
                    .font(.title2)
                    .fontWeight(.bold)
                
                ForEach(recipe.ingredients,id: \.self) { ingredient in
                    Text(" - \(ingredient)")
                }
                
                Text("Instructions")
                    .font(.title2)
                    .fontWeight(.bold)
                
                ForEach(
                    Array(recipe.instructions.enumerated()),
                    id: \.offset
                ) { index, instruction in
                    Text("\(index + 1). \(instruction)")
                }
            }
            .padding()
        }
        .navigationTitle(recipe.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        RecipeDetailView(recipe: sampleRecipes[0])
    }
}
