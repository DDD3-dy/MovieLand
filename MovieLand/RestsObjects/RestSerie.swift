//
//  RestSerie.swift
//  MovieLand
//
//  Created by Dylan Caetano on 01/03/2022.
//

import Foundation

struct RestSerie: Codable {
    let name: String
    let poster_path: String?
    let overview: String
    let vote_average: Float
    let genres: [RestGenre]
    let seasons: [RestSeason]
}

struct RestGenre: Codable {
    let name: String
}

struct RestSeason: Codable {
    let poster_path: String?
    let episode_count: Int
    let overview: String
    let season_number: Int
}

