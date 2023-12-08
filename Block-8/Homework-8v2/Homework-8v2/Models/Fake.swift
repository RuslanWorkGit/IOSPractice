//
//  Fake.swift
//  Homework-8v2
//
//  Created by Ruslan Liulka on 08.12.2023.
//

import Foundation

// MARK: - WelcomeElement
struct FakeData: Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}
