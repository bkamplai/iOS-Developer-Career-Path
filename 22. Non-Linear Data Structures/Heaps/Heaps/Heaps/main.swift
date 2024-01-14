//
//  main.swift
//  Heaps
//
//  Created by Brandon Kamplain on 1/13/24.
//

class MaxHeap: CustomStringConvertible {
    
    // Instance Variables
    var heap: [Int]
    var size: Int {
        heap.count
    }
    var isEmpty : Bool {
        heap.isEmpty
    }
    var description: String {
        var text = "["
        var taskNumber = 1
        for task in heap {
            text += "\(taskNumber): \(task), "
            taskNumber += 1
        }
        text = String(text.dropLast(2))
        text += "]"
        return text
    }
    
    // Initializer
    init() {
        self.heap = [];
    }
    
    // Heap Functions
    func add(value: Int) {
        heap.append(value)
        heapifyUp()
    }
    
    func peek() {
        if isEmpty {
            print("Nothing left in the MaxHeap.")
            return
        }
        print("The maximum element is: \(heap.first!)")
    }
    
    func remove() {
        if isEmpty {
            print("Nothing left in the MaxHeap.")
            return
        } else {
            heap.swapAt(0, size - 1)
            print("Removing the maximum element: \(heap.remove(at: size - 1))")
        }
        heapifyDown()
    }
    
    // Internal (Private) Functions -> Used to maintain the heap
    private func heapifyUp() {
        var currentIndex = size - 1
        while currentIndex > 0 && heap[currentIndex] > heap[parentIndex(of: currentIndex)] {
            heap.swapAt(currentIndex, parentIndex(of: currentIndex))
            currentIndex = parentIndex(of: currentIndex)
        }
    }
    
    private func heapifyDown() {
        var currentIndex = 0
        var toSwap: (needsToSwap: Bool, olderChildIndex: Int) = hasSmallerChildren(currentIndex)
        while toSwap.needsToSwap {
            heap.swapAt(currentIndex, toSwap.olderChildIndex)
            currentIndex = toSwap.olderChildIndex
            toSwap = hasSmallerChildren(currentIndex)
        }
    }
    
    // Helper functions -> Used to make our main functions more readable
    
    private func hasSmallerChildren(_ currentIndex: Int) -> (Bool, Int) {
        var olderChild = false
        var olderChildIndex = 0
        
        let leftChildIndex = findLeftChildIndex(of: currentIndex)
        let rightChildIndex = findRightChildIndex(of: currentIndex)
        if indexExists(leftChildIndex) && heap[currentIndex] < heap[leftChildIndex] {
            olderChild = true
            olderChildIndex = leftChildIndex
        }
        if indexExists(rightChildIndex)
            && heap[currentIndex] < heap[rightChildIndex]
            && heap[rightChildIndex] > heap[leftChildIndex]{
            olderChild = true
            olderChildIndex = rightChildIndex
        }
        return (olderChild, olderChildIndex)
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

var test = MaxHeap()

for _ in 1...10 {
    test.add(value: Int.random(in: 1..<100))
}
print(test)
test.peek()
test.remove()
test.remove()
test.remove()
test.remove()
print(test)
