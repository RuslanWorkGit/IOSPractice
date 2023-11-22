//
//  CodableModels.swift
//  JSON
//
//  Created by Ruslan Liulka on 22.11.2023.
//

import Foundation

struct AllUsersData: Codable {
    var type: String?
    var responseData: ResponseData?
}

struct ResponseData: Codable {
    var users: [User]?
}

struct User: Codable {
    var name: String?
    var info: UsersInfo?
}

struct UsersInfo: Codable {
    var age: Int?
    var height: Int?
}
