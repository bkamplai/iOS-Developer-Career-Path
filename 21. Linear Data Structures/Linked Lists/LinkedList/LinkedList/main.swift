//
//  main.swift
//  LinkedList
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
extension Node: CustomStringConvertible {
  var description: String {
    return data + " -> " + (next?.description ?? "nil")
  }
}

class LinkedList {
    var head: Node?
    var tail: Node?
    
    func append(_ data: String) {
        let newNode = Node(data: data)
        if let lastNode = tail {
            lastNode.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }
}
