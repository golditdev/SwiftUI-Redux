//
//  AppStore.swift
//  SwiftUIDemo
//
//  Created by GoldItDev on 13/01/2021.
//  Copyright © 2021 GoldItDev. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class AppState: ObservableObject {
    var objectWillChange = PassthroughSubject<AppState, Never>()
    
    var usersState: UsersState
    
    init(usersState: UsersState = UsersState()) {
        self.usersState = usersState
    }
    
    func dispatch(action: Action) {
        usersState = UserStateReducer().reduce(state: usersState, action: action)
        objectWillChange.send(self)
    }
}

let store = AppState()

#if DEBUG
let sampleStore = AppState(usersState: UsersState(users: sampleData))
#endif


