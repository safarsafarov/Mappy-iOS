//
//  LocationPreviewView.swift
//  Mappy
//
//  Created by Safar Safarov on 23/07/22.
//

import SwiftUI

struct LocationPreviewView: View {
    var body: some View {
        VStack(spacing: 16) {
            
            ZStack {
                if let imageName = location.imageNames.first {
                    Image(imageName)
                }
            }
            
            Text(location.name)
        }
    }
}

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        LocationPreviewView(location: LocationsDataService.locations.first!)
    }
}
