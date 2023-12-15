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
    
    private func index(for key: String) -> Int {
        return abs(key.hashValue)
    }
    
    public func testIndex() {
        let test = "Codecademy"
        let hashValue = index(for: test)
        print(hashValue)
    }
}

let hashTable = HashTable(capacity: 5)
hashTable.testIndex()
