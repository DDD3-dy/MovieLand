//
//  Season.swift
//  MovieLand
//
//  Created by Dylan Caetano on 19/02/2022.
//

import Foundation

struct Season: Identifiable {
    let id = UUID()
    let imageURL: URL?
    let seasonNumber: Int
    let episodesCount: Int
    let description: String
}
