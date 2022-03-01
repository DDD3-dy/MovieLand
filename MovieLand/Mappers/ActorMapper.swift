//
//  ActorMapper.swift
//  MovieLand
//
//  Created by Dylan Caetano on 01/03/2022.
//

import Foundation

class ActorMapper {
    
    static func map(jsonActor: [String: Any]) -> Actor {
        let profilPath = jsonActor["profile_path"] as? String
        let name = jsonActor["name"] as! String
        let character = jsonActor["character"] as! String
        
        return Actor(
            url: URL(string: "https://image.tmdb.org/t/p/w500/\(profilPath ?? "")"),
            name: name,
            characterName: character
        )
    }
}
