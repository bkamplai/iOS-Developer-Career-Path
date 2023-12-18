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
    
    func addChildren(_ newChildren: [TreeNode]) {
        children.append(contentsOf: newChildren)
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
        return "\(data)"
    }
}

class Tree {
    var root: TreeNode
    
    init(root: TreeNode) {
        self.root = root
    }
    
    func print() {
        printFrom(root)
    }
    
    func printFrom(_ currentNode: TreeNode, _ depth: Int = 0) {
        let depthMarker = String(repeating: "--|", count: depth)
        Swift.print("\(depthMarker)\(currentNode)")
        for child in currentNode.children {
            printFrom(child, depth + 1)
        }
    }
    
    func depthFirstTraversal(startingAtNode: TreeNode) {
        Swift.print("\(startingAtNode) ", terminator: "")
        for child in startingAtNode.children {
            depthFirstTraversal(startingAtNode: child)
        }
    }
    
    func breadthFirstTraversal() {
        var queue = [TreeNode]()
        queue.append(root)
        while !queue.isEmpty {
            let currentNode = queue.removeFirst()
            Swift.print("\(currentNode) ", terminator: "")
            queue.append(contentsOf: currentNode.children)
        }
    }
}

var root = TreeNode(data: "Planting my first seed!")
print(root.data)
print(root.children.isEmpty)
var branch1 = TreeNode(data: "Your tree is ")
root.addChild(branch1)
root.addChild("growing every day.")
print(root.children.isEmpty)

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
print(patriarch == child4)
print(child2 == grandchild1)

var clifford = TreeNode(data: "Clifford the Big Red Dog")
var puppy1 = TreeNode(data: "Fido")
var puppy2 = TreeNode(data: "Max")
clifford.addChild(puppy1)
clifford.addChild(puppy2)
print("Clifford has \(clifford.children.count) children.")
clifford.removeChild(puppy1)
print("Now Clifford only has \(clifford.children.count) child.")
print(clifford)
print(puppy2)

let poeFamilyTree = Tree(root: patriarch)
poeFamilyTree.printFrom(child4)
print()
poeFamilyTree.print()

let matriarch = TreeNode(data: "Tracy")
let tim = TreeNode(data: "Tim")
let spencer = TreeNode(data: "Spencer")
let daina = TreeNode(data: "Daina")
let olivia = TreeNode(data: "Olivia")
let noah = TreeNode(data: "Noah")
let zola = TreeNode(data: "Zola the Dog")
let luna = TreeNode(data: "Luna the Cat")
let sansa = TreeNode(data: "Sansa the Dog")
let finnegan = TreeNode(data: "Finnegan the Cat")
let pepeduke = TreeNode(data: "Pepeduke the Cat")
let flora = TreeNode(data: "Flora the Puppy")
matriarch.addChildren([tim, spencer, daina])
tim.addChildren([olivia, noah, zola, luna])
spencer.addChild(sansa)
sansa.addChild(flora)
daina.addChildren([finnegan, pepeduke])
let familyTree = Tree(root: matriarch)
familyTree.depthFirstTraversal(startingAtNode: matriarch)
print()
familyTree.breadthFirstTraversal()
print()
familyTree.print()
