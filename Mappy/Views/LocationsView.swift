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
            VStack(spacing: 0) {
                header
                .padding()
                Spacer()
            }
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}

extension LocationView {
    private var header: some View {
        VStack {
            Text(vm.mapLocations.name + ", " + vm.mapLocations.cityName)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                }
                .background(.thinMaterial)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
    }
}
