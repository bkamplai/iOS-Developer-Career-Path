//
//  main.swift
//  Expressions
//
//  Created by Brandon Kamplain on 6/17/23.
//

func bake(ingredient: String, completionAction: (String) -> Void) {
  print("Baking \(ingredient)")
  completionAction(ingredient)
}

bake(ingredient: "apple") { ingredient in
  print("Finished baking \(ingredient)")
}
