//
//  NumberMovieView.swift
//  MovieLand
//
//  Created by Dylan Caetano on 18/02/2022.
//

import SwiftUI
import Kingfisher

struct SeasonView: View {
    
    let imageURL: URL?
    let seasonNumber: Int
    let episodesCount: Int
    let description: String
    
    var body: some View {
        HStack {
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 150)
                .cornerRadius(8.0)
        } // HSTACK
    }
}

struct SeasonView_Previews: PreviewProvider {
    static var previews: some View {
        SeasonView(
            imageURL: URL(string: "https://www.themoviedb.org/t/p/w260_and_h390_bestv2/lXS60geme1LlEob5Wgvj3KilClA.jpg"),
            seasonNumber: 3,
            episodesCount: 9,
            description: "La saison 2 de Stranger Things a été diffusée à partir du 27 octobre 2017."
        )
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
