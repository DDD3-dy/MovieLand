//
//  RestActor.swift
//  MovieLand
//
//  Created by Dylan Caetano on 01/03/2022.
//

import Foundation

struct RestCredits: Codable {
    let cast: [RestActor]
}

struct RestActor: Codable {
    let name: String
    let character: String
    let profile_path: String?
}
