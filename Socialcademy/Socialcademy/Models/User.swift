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
    var imageURL: URL?
    static let testUser = User(
        id: "",
        name: "Jamie Harris",
        imageURL: URL(string: "https://source.unsplash.com/lw9LrnpUmWw/480x480")
    )
}

extension User {
//    static let testUser = User(id: "", name: "Jamie Harris")
}
