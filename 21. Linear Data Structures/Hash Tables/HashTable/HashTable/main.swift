//
//  main.swift
//  HashTable
//
//  Created by Brandon Kamplain on 12/14/23.
//

struct HashTable {
    private var values: [String]
    
    public init(capacity: Int) {
        values = Array(repeating: "", count: capacity)
    }
    
    public subscript(key: String) -> String? {
        set {
            if let value = newValue {
                update(value: value, for: key)
            }
        }
        get {
            return value(for: key)
        }
    }
    
    private func index(for key: String) -> Int {
        return abs(key.hashValue) % values.count
    }
    
    private mutating func update(value: String, for key: String) {
        let elementIndex = index(for: key)
        values[elementIndex] = value
    }
    
    private func value(for key: String) -> String {
        let elementIndex = index(for: key)
        return values[elementIndex]
    }
}

var hashTable = HashTable(capacity: 5)
hashTable["Thor"] = "Strongest Avenger"
print(hashTable["Thor"]!)   //Prints: Strongest Avenger
