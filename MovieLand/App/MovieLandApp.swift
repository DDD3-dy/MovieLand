//
//  MovieLandApp.swift
//  MovieLand
//
//  Created by Dylan Caetano on 15/02/2022.
//

import SwiftUI

@main
struct MovieLandApp: App {
    
    private let appStade = AppState()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(appStade)
        }
    }
}
