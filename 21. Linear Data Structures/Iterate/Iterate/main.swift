//
//  main.swift
//  Iterate
//
//  Created by Brandon Kamplain on 8/19/23.
//

class Node {
    var data: String
    var next: Node?
    
    init(data: String) {
        self.data = data
    }
}

var strawberry = Node(data: "Berry Tasty")
var banana = Node(data: "Banana-rama")
var coconut = Node(data: "Nuts for Coconut")

strawberry.next = banana
banana.next = coconut

func printAllNodes(startingAt node: Node) {
    var currentNode: Node? = node
    
    while let unwrappedNode = currentNode {
        print(unwrappedNode.data)
        currentNode = unwrappedNode.next
    }
}

printAllNodes(startingAt: strawberry)
