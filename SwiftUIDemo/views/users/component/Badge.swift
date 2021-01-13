//
//  GreenBadge.swift
//  SwiftUIDemo
//
//  Created by GoldItDev on 13/01/2021.
//  Copyright © 2021 GoldItDev. All rights reserved.
//

import SwiftUI

struct Badge : View {
    let text: String
    let color: Color
    @Binding var show: Bool
    
    var animation: Animation {
        Animation
            .spring()
            .speed(2)
    }
    
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .background(color)
            .cornerRadius(8)
            .scaleEffect(show ? 1: 0.5)
            .opacity(show ? 1 : 0)
            .animation(animation)
    }
}
