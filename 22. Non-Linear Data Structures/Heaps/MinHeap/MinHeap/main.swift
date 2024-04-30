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
    
    func getTask() {
        if heap.isEmpty {
            print("Your task list is empty, good job!")
        } else {
            print("Your next task is: \(heap[0])")
        }
    }
    
    func finishTask() {
        if heap.isEmpty {
            print("There are no tasks left to complete.")
        } else {
            heap.swapAt(0, size - 1)
            print("Removing: \(heap.remove(at: size - 1))")
        }
    }
    
    private func heapifyUp() {
        var currentIndex = size - 1
        while currentIndex > 0 && heap[currentIndex] < heap[parentIndex(of: currentIndex)] {
            print("Heapifying (up) elements at index: \(currentIndex) & \(parentIndex(of: currentIndex))")
            heap.swapAt(currentIndex, parentIndex(of: currentIndex))
            currentIndex = parentIndex(of: currentIndex)
        }
    }
    
    private func findLeftChildIndex(of index: Int) -> Int {
        return (2 * index) + 1
    }
    
    private func findRightChildIndex(of index: Int) -> Int {
        return (2 * index) + 2
    }
    
    private func parentIndex(of index: Int) -> Int {
        return (index - 1) / 2
    }
    
    private func indexExists(_ index: Int) -> Bool {
        return index < size
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
toDoList.getTask()
toDoList.finishTask()
toDoList.add(task: "Meeting: Annual Review", dueDate: dateFormatter.date(from: "05/01/2045 09:00")!)
 toDoList.add(task: "Submit Initial Design Ideas", dueDate: dateFormatter.date(from: "05/01/2000 11:00")!)
toDoList.add(task: "Mentor Intern", dueDate: dateFormatter.date(from: "09/15/2041 16:25")!)
toDoList.add(task: "Swap Laundry", dueDate: dateFormatter.date(from: "11/05/2003 13:00")!)
toDoList.add(task: "Run Anti Virus Software", dueDate: dateFormatter.date(from: "08/31/2009 23:30")!)
toDoList.getTask()
toDoList.finishTask()
 print(toDoList)
