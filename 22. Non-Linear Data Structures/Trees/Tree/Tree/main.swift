//
//  main.swift
//  Tree
//
//  Created by Brandon Kamplain on 12/15/23.
//

class TreeNode {
    var data: String
    var children: [TreeNode]
    
    init(data: String) {
        self.data = data
        self.children = []
    }
}

var root = TreeNode(data: "Planting my first seed!")
print(root.data)    //Prints: Planting my first seed!
