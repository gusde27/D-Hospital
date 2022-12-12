//
//  D_HospitalApp.swift
//  D-Hospital
//
//  Created by I Gede Bagus Wirawan on 11/12/22.
//

import SwiftUI

@main
struct D_HospitalApp: App {
    
    //var network = Network()

    var body: some Scene {
        WindowGroup {
            HomeView()
                //.environmentObject(network)
        }
    }
}
