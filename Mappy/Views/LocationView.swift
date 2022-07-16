//
//  LocationView.swift
//  Mappy
//
//  Created by Safar Safarov on 19/07/22.
//

import SwiftUI

class LocationsViewModel: ObservableObject {
    @Published var locations: [Location]
    
    init(){
        let locations = LocationsDataService.locations
        self.locations = locations
    }
}

struct LocationView: View {
    
    @State private var vm = LocationsViewModel()
    
    var body: some View {
        List {
            ForEach(vm.locations) {
                Text($0.name)
            }
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
