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
    
    func add(_ value: T) {
        let node = BinaryNode(data: value)
        
        if let root = self.root {
            add(node, to: root)
        } else {
            self.root = node
        }
    }
    
    func contains(_ value: T) -> Bool {
        contains(value, startingAt: root)
    }
    
    func remove(_ value: T) {
        _ = remove(value, fromParent: root)
    }
    
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
    
    private func contains(_ value: T, startingAt node: BinaryNode<T>?) -> Bool {
        guard let parent = node else {
            return false
        }
        
        var valueFound = false
        
        if value < parent.data {
            valueFound = contains(value, startingAt: parent.leftChild)
        } else if value > parent.data {
            valueFound = contains(value, startingAt: parent.rightChild)
        } else {
            valueFound = true
        }
        return valueFound
    }
    
    private func findMinimumValue(_ node: BinaryNode<T>) -> T {
        var currentNode = node
        
        while let next = currentNode.leftChild {
            currentNode = next
        }
        return currentNode.data
    }
    
    private func remove(_ value: T, fromParent node: BinaryNode<T>?) -> BinaryNode<T>? {
        guard let parent = node else {return nil}
        
        switch value {
        case _ where value < parent.data:
            parent.leftChild = remove(value, fromParent: parent.leftChild)
        case _ where value > parent.data:
            parent.rightChild = remove(value, fromParent: parent.rightChild)
        case _ where value == parent.data:
            if parent.leftChild == nil {
                return parent.rightChild
            } else if parent.rightChild == nil {
                return parent.leftChild
            } else {
                parent.data = findMinimumValue(parent.rightChild!)
                parent.rightChild = remove(parent.data, fromParent: parent.rightChild)
            }
        default: fatalError("Unexpected value")
        }
        return parent
    }
}

var numberTree = BinarySearchTree<Int>()
numberTree.add(5)
numberTree.add(6)
numberTree.add(2)
numberTree.add(56)
numberTree.add(34)
numberTree.add(12)
numberTree.add(54)
numberTree.add(3)
print(numberTree.contains(12))
print(numberTree.contains(7))
print(numberTree.contains(54))
numberTree.remove(12)
print(numberTree.contains(12))
