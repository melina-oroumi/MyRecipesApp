//
//  ContentView.swift
//  MyRecipes
//
//  Created by Melina Hosseinzadeh on 20/11/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(sampleRecipes) { recipe in
                NavigationLink {
                    RecipeDetailView(recipe: recipe)
                } label: {
                    VStack(alignment: .leading, spacing: 6) {
                        Text(recipe.name)
                            .font(.headline)

                        Text("\(recipe.cookingTime) minutes")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("My Recipes")
        }
    }
}

#Preview {
    ContentView()
}

