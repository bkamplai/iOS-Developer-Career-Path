//
//  main.swift
//  MinHeap
//
//  Created by Brandon Kamplain on 1/13/24.
//

import Foundation

class MinHeap {
    private var heap: [TaskNode]
    private var size: Int {
        heap.count
    }
    
    init() {
        self.heap = []
    }
}

class TaskNode {
    private let task: String
    private let dueDate: Date
    
    init(_ task: String, _ dueDate: Date) {
        self.task = task
        self.dueDate = dueDate
    }
}
