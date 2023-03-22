//
//  UserStatusCache.swift
//  Buckets
//
//  Created by Selim Doğan on 21.03.2023.
//

import Foundation

enum UserStatus: String {
    case onBoard
}

enum UserOnBoardStatus: String {
    case welcome
    case onBoard
}

struct UserStatusCache: UserStatusProtocol {}

protocol UserStatusProtocol {
    func read(key: UserStatus) -> String
    func save(key: UserStatus, value: String)
    func delete(key: UserStatus)
}

extension UserStatusProtocol {
    func read(key: UserStatus) -> String {
        guard let value = UserDefaults.standard.value(forKey: key.rawValue) as? String else { return "" }
        return value
    }

    func save(key: UserStatus, value: String) {
        UserDefaults.standard.set(value, forKey: key.rawValue)
    }

    func delete(key: UserStatus) {
        UserDefaults.standard.removeObject(forKey: key.rawValue)
    }
}
