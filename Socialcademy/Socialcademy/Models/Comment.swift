//
//  Comment.swift
//  Socialcademy
//
//  Created by Brandon Kamplain on 8/13/23.
//

import Foundation

struct Comment: Identifiable, Equatable, Codable {
    var content: String
    var author: User
    var timestamp = Date()
    var id = UUID()
    static let testComment = Comment(content: "Lorem ipsum dolor set amet.", author: User.testUser)
}

extension Comment {
//    static let testComment = Comment(content: "Lorem ipsum dolor set amet.", author: User.testUser)
}
