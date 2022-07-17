//
//  MappyApp.swift
//  Mappy
//
//  Created by Safar Safarov on 19/07/22.
//

import SwiftUI

@main
struct MappyApp: App {
 
    @StateObject private var vm = LocationsViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            LocationView()
                .environmentObject(vm)
        }
    }
}
