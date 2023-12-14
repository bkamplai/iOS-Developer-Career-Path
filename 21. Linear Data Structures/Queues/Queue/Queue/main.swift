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
}
