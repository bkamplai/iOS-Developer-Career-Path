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
}
