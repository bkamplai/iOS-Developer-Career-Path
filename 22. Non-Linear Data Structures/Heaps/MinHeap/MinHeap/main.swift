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
    
    func add(task: String, dueDate: Date) {
        let taskNode = TaskNode(task, dueDate)
        print("Adding [\(taskNode.getTask())]...")
        heap.append(taskNode)
        heapifyUp()
    }
    
    private func heapifyUp() {
        
    }
}

class TaskNode {
    private let task: String
    private let dueDate: Date
    
    init(_ task: String, _ dueDate: Date) {
        self.task = task
        self.dueDate = dueDate
    }
    
    func getTask() -> String {
        return task
    }
}

extension MinHeap: CustomStringConvertible {
    var description: String {
        var text = ""
        text += "Total outstanding tasks: \(size)\n"
        var taskNumber = 1
        for task in heap {
            text += "\(taskNumber): \(task)\n"
            taskNumber += 1
        }
        return String(text.dropLast(1))
    }
}

extension TaskNode: Comparable, CustomStringConvertible {
    static func < (lhs: TaskNode, rhs: TaskNode) -> Bool {
        lhs.dueDate < rhs.dueDate
    }
    
    static func == (lhs: TaskNode, rhs: TaskNode) -> Bool {
        lhs.dueDate == rhs.dueDate && lhs.task == rhs.task
    }
    
    var description: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy HH:mm"
        if dueDate < Date() {
            return "LATE: \(task), Due: \(dateFormatter.string(from: dueDate))"
        }
        return "\(task), Due: \(dateFormatter.string(from: dueDate))"
    }
}

let toDoList: MinHeap = MinHeap();
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "MM/dd/yyyy HH:mm"
toDoList.add(task: "Meeting: Annual Review", dueDate: dateFormatter.date(from: "05/01/2045 09:00")!)
 toDoList.add(task: "Submit Initial Design Ideas", dueDate: dateFormatter.date(from: "05/01/2000 11:00")!)
 print(toDoList)
