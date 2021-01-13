//
//  UsersAction.swift
//  SwiftUIDemo
//
//  Created by GoldItDev on 13/01/2021.
//  Copyright © 2021 GoldItDev. All rights reserved.
//

import Foundation

enum UserActions: Action {
    case addUser
    case deleteUser(index: Int)
    case move(from: Int, to: Int)
    case editUser(id: Int, name: String, username: String)
    case testEditFirstUser
    case startEditUser
    case stopEditUser
}
