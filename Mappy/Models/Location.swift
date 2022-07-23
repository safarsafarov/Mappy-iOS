//
//  Location.swift
//  Mappy
//
//  Created by Safar Safarov on 19/07/22.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable{
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    var id: String {
        name + cityName
    }
    
    // Equatable
}
