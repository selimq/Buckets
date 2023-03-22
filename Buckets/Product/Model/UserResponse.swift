//
//  UserResponse.swift
//  Buckets
//
//  Created by Selim Doğan on 22.03.2023.
//

import Foundation

// MARK: - UserResponse

struct UserResponse: Codable {
    let data: [Datum]?
}

// MARK: - Datum

struct Datum: Codable {
    let id: Int?
    let email, firstName, lastName: String?
    let avatar: String?

    enum CodingKeys: String, CodingKey {
        case id, email
        case firstName = "first_name"
        case lastName = "last_name"
        case avatar
    }
}
