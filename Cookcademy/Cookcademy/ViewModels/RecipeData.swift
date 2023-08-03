//
//  RecipeData.swift
//  Cookcademy
//
//  Created by Brandon Kamplain on 8/2/23.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}
