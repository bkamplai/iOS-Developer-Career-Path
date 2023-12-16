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
    
    func removeChild(_ nodeToRemove: TreeNode) {
        if children.isEmpty {
            return
        } else if children.contains(nodeToRemove) {
            children.removeAll() { $0 == nodeToRemove }
            return
        } else {
            for child in children {
                child.removeChild(nodeToRemove)
            }
        }
    }
}

extension TreeNode: Equatable {
    static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.data == rhs.data && lhs.children == rhs.children
    }
}

extension TreeNode: CustomStringConvertible {
    var description: String {
        return "Data: \(data)\n\t# of children: \(children.count)\n\t\(children.map { $0.data })"
    }
}

var root = TreeNode(data: "Planting my first seed!")
print(root.data)                                                    //Prints: Planting my first seed!
print(root.children.isEmpty)                                        //Prints: true
var branch1 = TreeNode(data: "Your tree is ")
root.addChild(branch1)
root.addChild("growing every day.")
print(root.children.isEmpty)                                        //Prints: false

// E. A. Poe Family Tree
var patriarch = TreeNode(data: "David Poe")
var child1 = TreeNode(data: "John Poe")
var child2 = TreeNode(data: "William Poe")
var child3 = TreeNode(data: "George Poe")
var child4 = TreeNode(data: "David Poe")
var child5 = TreeNode(data: "Samuel Poe")
var child6 = TreeNode(data: "Maria Poe (Clemm)")
var child7 = TreeNode(data: "Elizabeth Poe")
var grandchild1 = TreeNode(data: "William Poe")
var grandchild2 = TreeNode(data: "Edgar Allan Poe")
var grandchild3 = TreeNode(data: "Rosalie Poe")
var grandchild4 = TreeNode(data: "Henry Clemm")
var grandchild5 = TreeNode(data: "Virginia Marie Clemm")
var grandchild6 = TreeNode(data: "Virigina Eliza Clemm")
patriarch.addChild(child1)
patriarch.addChild(child2)
patriarch.addChild(child3)
patriarch.addChild(child4)
patriarch.addChild(child5)
patriarch.addChild(child6)
patriarch.addChild(child7)
child4.addChild(grandchild1)
child4.addChild(grandchild2)
child4.addChild(grandchild3)
child6.addChild(grandchild4)
child6.addChild(grandchild5)
child6.addChild(grandchild6)
print(patriarch == child4)                                          //Prints: false
print(child2 == grandchild1)                                        //Prints: true

var clifford = TreeNode(data: "Clifford the Big Red Dog")
var puppy1 = TreeNode(data: "Fido")
var puppy2 = TreeNode(data: "Max")
clifford.addChild(puppy1)
clifford.addChild(puppy2)
print("Clifford has \(clifford.children.count) children.")          //Prints: Clifford has 2 children
clifford.removeChild(puppy1)
print("Now Clifford only has \(clifford.children.count) child.")    //Prints: Now Clifford only has 1 child.
print(clifford)                                                     //Prints: Data: Clifford the Big Red Dog \n\t # of children: 2 \n\t ["Fido", "Max"]
print(puppy2)                                                       //Prints: Data: Max \n\t # of children: 0 \n\t []
