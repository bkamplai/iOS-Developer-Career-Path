//
//  main.swift
//  Node
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

var firstNode = Node(data: "I am a Node!")
print(firstNode.data)

var nodeOne = Node(data: "Node 1")
if let node = nodeOne.next {
    print("The next node of nodeOne is \(node)")
} else {
    print("The next node of nodeOne is nil")
}
var nodeTwo = Node(data: "Node 2")
nodeOne.next = nodeTwo
print(nodeOne.next!.data)
