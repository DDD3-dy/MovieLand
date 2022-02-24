//
//  Serie.swift
//  MovieLand
//
//  Created by Dylan Caetano on 19/02/2022.
//

import Foundation

struct Serie: Identifiable {
    let id = UUID()
    let imageURL: URL?
    let title: String
    let description: String
    let seasons: [Season]
    let genres: [String]
    let casting: [Actor]
    let rating: Float
}
