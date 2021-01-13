//
//  MainView.swift
//  SwiftUIDemo
//
//  Created by GoldItDev on 13/01/2021.
//  Copyright © 2021 GoldItDev. All rights reserved.
//

import SwiftUI

struct TabbarView : View {
    @EnvironmentObject var state: AppState
    @State var selectedIndex: Int = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            UsersListView()
                .tabItem({ Text("Users") })
            MapView()
                .tabItem({ Text("Map") })
        }
    }
}

#if DEBUG
struct MainView_Previews : PreviewProvider {
    static var previews: some View {
        TabbarView(selectedIndex: 0).environmentObject(sampleStore)
    }
}
#endif

