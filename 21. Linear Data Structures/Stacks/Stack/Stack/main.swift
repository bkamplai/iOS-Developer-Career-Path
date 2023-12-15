//
//  main.swift
//  Stack
//
//  Created by Brandon Kamplain on 12/14/23.
//

class LinkedList {
    class Node {
        var data: String
        var next: Node?
        init(data: String) {
            self.data = data
        }
    }
    var head: Node?
    var tail: Node?
    func addToHead(_ data: String) {
        let newHead = Node(data: data)
        let current = head
        head = newHead
        if current != nil {
            head?.next = current
        }
    }
    
    func removeHead() -> Node? {
        let removedHead = head
        if removedHead != nil {
            head = removedHead?.next
            removedHead?.next = nil
        }
        return removedHead
    }
}

struct Stack {
    private let list = LinkedList()
    
    var isEmpty: Bool {
        return list.head == nil
    }
}

var dishes = Stack()
print(dishes.isEmpty)   //Prints: true
