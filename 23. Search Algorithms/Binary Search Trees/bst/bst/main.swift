//
//  main.swift
//  bst
//
//  Created by Brandon Kamplain on 5/27/24.
//

class BinaryNode<T> {
    var data: T
    var leftChild: BinaryNode?
    var rightChild: BinaryNode?
    
    init(data: T) {
        self.data = data
    }
}

class BinarySearchTree<T: Comparable & CustomStringConvertible> {
    private var root: BinaryNode<T>?
    
    private func add(_ node: BinaryNode<T>, to parent: BinaryNode<T>) {
        if node.data < parent.data {
            if let existingLeftNode = parent.leftChild {
                add(node, to: existingLeftNode)
            } else {
                parent.leftChild = node
            }
        } else if node.data > parent.data {
            if let existingRightNode = parent.rightChild {
                add(node, to: existingRightNode)
            } else {
                parent.rightChild = node
            }
        }
    }
}

var numberTree = BinarySearchTree<Int>()
