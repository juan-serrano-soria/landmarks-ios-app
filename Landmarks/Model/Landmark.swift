//
//  Landmark.swift
//  Landmarks
//
//  Created by Serrano Soria, Juan on 30/12/2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var city: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case castles = "城"
        case towers = "タワー"
        case shrines = "神社"
        case universities = "大学"
        case parks = "公園"
        case palaces = "宮殿"
        case temples = "寺院"
    }

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
