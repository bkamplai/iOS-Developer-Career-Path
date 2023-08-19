//
//  main.swift
//  Node
//
//  Created by Brandon Kamplain on 8/19/23.
//

class Node {
    var data: String
    
    init(data: String) {
        self.data = data
    }
}

var firstNode = Node(data: "I am a Node!")

print(firstNode.data)
