//
//  User.swift
//  Socialcademy
//
//  Created by Brandon Kamplain on 8/12/23.
//

import Foundation

struct User: Identifiable, Equatable, Codable {
    var id: String
    var name: String
    static let testUser = User(id: "", name: "Jamie Harris")
}

extension User {
//    static let testUser = User(id: "", name: "Jamie Harris")
}
