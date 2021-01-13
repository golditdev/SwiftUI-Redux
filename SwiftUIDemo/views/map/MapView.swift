
//
//  MapVie.swift
//  SwiftUIDemo
//
//  Created by GoldItDev on 13/01/2021.
//  Copyright © 2021 GoldItDev. All rights reserved.
//

import SwiftUI
import UIKit
import MapKit

struct MapViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        return MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
}

struct MapView : View {
    var body: some View {
        MapViewRepresentable()
    }
}

#if DEBUG
struct MapVie_Previews : PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
