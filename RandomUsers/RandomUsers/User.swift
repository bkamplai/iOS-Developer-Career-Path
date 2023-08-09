//
//  User.swift
//  RandomUsers
//
//  Created by Brandon Kamplain on 8/8/23.
//

import Foundation

struct User: Identifiable, Decodable {
    let id: String
    let name: Name
    
    var fullName: String {
        name.title + ". " + name.first + " " + name.last
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(Name.self, forKey: .name)
        let loginInfo = try values.nestedContainer(keyedBy: LoginInfoCodingKeys.self, forKey: .login)
        id = try loginInfo.decode(String.self, forKey: .uuid)
    }
    
    enum CodingKeys: String, CodingKey {
        case login
        case name
    }
    
    enum LoginInfoCodingKeys: String, CodingKey {
        case uuid
    }
}

struct Name: Decodable {
    let title: String
    let first: String
    let last: String
}

struct Response: Decodable {
    let users: [User]
    
    enum CodingKeys: String, CodingKey {
        case users = "results"
    }
}
