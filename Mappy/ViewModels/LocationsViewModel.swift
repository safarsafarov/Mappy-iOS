//
//  LocationViewModel.swift
//  Mappy
//
//  Created by Safar Safarov on 20/07/22.
//

import Foundation
import MapKit

class LocationsViewModel: ObservableObject {
    
    // All loaded locations
    @Published var locations: [Location]
    
    //Current location on map
    @Published var mapLocation: Location
    
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocations = locations.first!
    }
    
    private func updateMapRegion(location: Location) {
        mapRegion = MKCoordinateRegion(
            center: location.coordinates,
            span: mapSpan
        )
    }
}
