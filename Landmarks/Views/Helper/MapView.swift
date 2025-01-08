//
//  MapView.swift
//  Landmarks
//
//  Created by Serrano Soria, Juan on 25/12/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D

    var body: some View {
        Map(position:  .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.839722, longitude: 134.693889))
}
