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
}

var numberTree = BinarySearchTree<Int>()
