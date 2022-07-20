//
//  LocationView.swift
//  Mappy
//
//  Created by Safar Safarov on 19/07/22.
//

import SwiftUI

class LocationsviewModel: ObservableObject {
    @Published var locations: [Location]
    
    init(){
        let locations = LocationsDataService.locations
        self.locations = locations
    }
}

struct LocationView: View {
    var body: some View {
        List {
            ForEach(vm.locations)
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
