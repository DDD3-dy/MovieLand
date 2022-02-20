//
//  MockedData.swift
//  MovieLand
//
//  Created by Dylan Caetano on 20/02/2022.
//

import Foundation

let mockedCasting = [
    Actor(
        url: URL(string: "https://www.themoviedb.org/t/p/w1280/vFegIjLLQGwPn6af4SE9LAbnGNE.jpg"),
        name: "Jensen Ackles",
        characterName: "Dean Winchester"
    ),
    Actor(
        url: URL(string: "https://www.themoviedb.org/t/p/w1280/q2YR6o6MKqO2szOhmmSSAnjs2aC.jpg"),
        name: "Jared Padalecki",
        characterName: "Sam Winchester"
    ),
    Actor(
        url: URL(string: "https://www.themoviedb.org/t/p/w1280/kplIxo3cQrEMEYz8YqZOgKDQjgB.jpg"),
        name: "Misha Collins",
        characterName: "Castiel"
    )
    
]

let mockedSeason = [
    Season(
           imageURL: URL(string: "https://www.themoviedb.org/t/p/w260_and_h390_bestv2/jbUJjcQsCgNlhgo4L0O8RQZqQLx.jpg"),
           seasonNumber: 15,
           episodesCound: 20,
           description: "Sam, Jack, Castiel, Mary, Bobby Singer, Rowena et Arthur Ketch réfléchissent à un moyen pour sauver Dean."
    ),
    Season(
           imageURL: URL(string: "https://www.themoviedb.org/t/p/w260_and_h390_bestv2/22BarYiD0QFajKT1AG71RhBrJfH.jpg"),
           seasonNumber: 15,
           episodesCound: 23,
           description: "Les frères Winchester ont pour mission de protéger le Nephilim dont les pouvoirs puissants attirent l’attention d’Asmodeus, un nouvel ennemi. Sorti de l'ombre, le dernier Prince de l'Enfer cherche à mettre la main sur l'adolescent pour régner sur l'Enfer. Avec Castiel, de nouveau ressuscité, Sam et Dean vont devoir assurer la protection de Jack pour protéger le monde."
    ),
]

let mockedSerie = Serie(
    imageURL: URL(string: "https://www.themoviedb.org/t/p/w1280/KoYWXbnYuS3b0GyQPkbuexlVK9.jpg"),
    title: "Supernatural",
    description: "Deux frères, Sam et Dean Winchester, chasseurs de créatures surnaturelles, sillonnent les États-Unis à bord d'une Chevrolet Impala noire de 1967 et enquêtent sur des phénomènes paranormaux (souvent issus du folklore, des superstitions, mythes et légendes urbaines américaines, mais aussi des monstres surnaturels tels que les fantômes, loups-garous, démons, vampires…).",
    seasons: mockedSeason,
    genres: ["Drame", "Mystère", "Science-Fiction", "Fantastique"],
    casting: mockedCasting,
    rating: 8.3
)
