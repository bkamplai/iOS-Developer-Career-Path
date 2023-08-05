//
//  main.swift
//  Opaque Types
//
//  Created by Brandon Kamplain on 7/4/23.
//

protocol ResettableCollection {
    associatedtype T
    var elements: [T] { get }
    mutating func resetAllElements()
}

struct ResettableStringArray: ResettableCollection {
    var elements = [String]()
    mutating func resetAllElements() {
        elements = elements.map { _ in "" }
    }
}

func getResettableCollection() -> some ResettableCollection {
    let passwords = ["password", "letmein", "openup"]
    return ResettableStringArray(elements: passwords)
}

var collection = getResettableCollection()
//print(collection.elements[0].lowercased)
collection.resetAllElements()
print(collection)
