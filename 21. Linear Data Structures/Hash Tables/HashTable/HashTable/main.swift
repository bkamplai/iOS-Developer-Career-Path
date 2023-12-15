//
//  main.swift
//  HashTable
//
//  Created by Brandon Kamplain on 12/14/23.
//

struct HashTable {
    private var buckets: [[(String, String)]]
    
    public init(capacity: Int) {
        buckets = Array(repeating: [], count: capacity)
    }
    
    public subscript(key: String) -> String? {
        set {
            if let value = newValue {
                update(value: value, for: key)
            } else {
                removeValue(for: key)
            }
        }
        get {
            return value(for: key)
        }
    }
    
    private func index(for key: String) -> Int {
        return abs(key.hashValue) % buckets.count
    }
    
    private mutating func update(value: String, for key: String) {
        let bucketIndex = index(for: key)
        if let (elementIndex, _) = buckets[bucketIndex].enumerated().first(where: { $0.element.0 == key }) {
            buckets[bucketIndex][elementIndex] = (key, value)
        } else {
            buckets[bucketIndex].append((key, value))
        }
    }
    
    private func value(for key: String) -> String {
        let bucketIndex = index(for: key)
        if let (_, currentValue) = buckets[bucketIndex].enumerated().first(where: { $0.element.0 == key }) {
            return currentValue.1
        }
        return ""
    }
    
    private mutating func removeValue(for key: String) {
        let bucketIndex = index(for: key)
        if let (elementIndex, _) = buckets[bucketIndex].enumerated().first(where: { $0.element.0 == key }) {
            buckets[bucketIndex].remove(at: elementIndex)
        }
    }
}

var hashTable = HashTable(capacity: 5)
hashTable["Thor"] = "Strongest Avenger"
print(hashTable["Thor"]!)   //Prints: Strongest Avenger
hashTable["Thor"] = nil
print(hashTable["Thor"]!)   //Prints: ""
