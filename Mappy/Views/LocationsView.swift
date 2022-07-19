//
//  LocationView.swift
//  Mappy
//
//  Created by Safar Safarov on 19/07/22.
//

import SwiftUI
import MapKit


struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    @State private var mapRegion: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 41.2995, longitude: 69.2401),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    var body: some View {
        ZStack {
            Map(coordinateRegion: $mapRegion)
                .ignoresSafeArea()
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}
