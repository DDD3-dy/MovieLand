//
//  AppState.swift
//  MovieLand
//
//  Created by Dylan Caetano on 28/02/2022.
//

import Foundation

class AppState: ObservableObject {
    
    @Published var series: [Serie] = []
    
    static var preview: AppState {
        let appState = AppState()
        appState.series = [
           mockedSerie,
           mockedSerie,
           mockedSerie
        ]
        return appState
    }
    
}
