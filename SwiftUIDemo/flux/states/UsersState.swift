//
//  UsersStore.swift
//  SwiftUIDemo
//
//  Created by GoldItDev on 13/01/2021.
//  Copyright © 2021 GoldItDev. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

struct UsersState: FluxState {
    var users: [User]
    var isEditingUser = false
    
    init(users: [User] = []) {
        self.users = users
    }
}
