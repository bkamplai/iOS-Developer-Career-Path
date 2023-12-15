//
//  main.swift
//  Queue
//
//  Created by Brandon Kamplain on 12/14/23.
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

struct Queue {
    var head: Node?
    var tail: Node?
    
    func peek() -> String? {
        return head?.data
    }
    
    mutating func enqueue(_ data: String) {
        let newNode = Node(data: data)
        
        guard let lastNode = tail else {
            head = newNode
            tail = newNode
            return
        }
        
        lastNode.next = newNode
        tail = newNode
    }
    
    mutating func dequeue() -> String? {
        var removedNode: String?
        
        if let firstNode = head {
            removedNode = firstNode.data
        }
        
        if head === tail {
            tail = nil
        }
        
        head = head?.next
        
        return removedNode
    }
}
