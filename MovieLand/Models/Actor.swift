//
//  Actor.swift
//  MovieLand
//
//  Created by Dylan Caetano on 19/02/2022.
//

import Foundation

struct Actor: Identifiable {
    let id = UUID()
    let url: URL?
    let name: String
    let characterName: String
}
