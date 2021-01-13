//
//  Reducer.swift
//  SwiftUIDemo
//
//  Created by GoldItDev on 13/01/2021.
//  Copyright © 2021 GoldItDev. All rights reserved.
//

import Foundation

protocol Reducer {
    associatedtype StateType: FluxState
    func reduce(state: StateType, action: Action) -> StateType
}
