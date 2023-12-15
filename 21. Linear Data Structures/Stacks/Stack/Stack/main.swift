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
    
    mutating func push(_ str: String) {
        list.addToHead(str)
        print("Added \(str)!")
    }
    
    func peek() -> String? {
        guard let node = list.head else { return nil }
        return node.data
    }
}

var dishes = Stack()
print("Top dish: \(dishes.peek() ?? "stack is empty")") //Prints: Top dish: stack is empty
dishes.push("blue plate")
dishes.push("white plate")
dishes.push("yellow plate")
print("Top dish: \(dishes.peek() ?? "stack is empty")") //Prints: Top dish: yellow plate
