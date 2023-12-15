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
    
    func addChild(_ newChild: TreeNode) {
        children.append(newChild)
    }
    
    func addChild(_ newChildData: String) {
        children.append(TreeNode(data: newChildData))
    }
}

var root = TreeNode(data: "Planting my first seed!")
print(root.data)                //Prints: Planting my first seed!
print(root.children.isEmpty)    //Prints: true
var branch1 = TreeNode(data: "Your tree is ")
root.addChild(branch1)
root.addChild("growing every day.")
print(root.children.isEmpty)    //Prints: false
