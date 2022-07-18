//
//  LocationViewModel.swift
//  Mappy
//
//  Created by Safar Safarov on 20/07/22.
//

import Foundation

class LocationsViewModel: ObservableObject {
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
}
