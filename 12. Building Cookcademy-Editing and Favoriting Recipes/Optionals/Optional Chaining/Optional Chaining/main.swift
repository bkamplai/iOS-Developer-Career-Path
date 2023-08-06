//
//  main.swift
//  Optional Chaining
//
//  Created by Brandon Kamplain on 6/16/23.
//

var studentGovernment = [
    "president": "Shristi",
    "treasurer": "Diego"
]

if let presidentNameLength = studentGovernment["president"]?.count {
    print("The president's name is \(presidentNameLength) characters long")
}

if let vicePresidentNameLength = studentGovernment["vicePresident"]?.count {
    print("The vice president's name is \(vicePresidentNameLength) characters long")
} else {
    print("There is no vice president")
}
