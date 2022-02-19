//
//  NumberMovieView.swift
//  MovieLand
//
//  Created by Dylan Caetano on 18/02/2022.
//

import SwiftUI
import Kingfisher

struct SeasonView: View {
    
    let viewModel: SeasonModel
    
    var body: some View {
        HStack(spacing: 15) {
            KFImage(viewModel.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 150)
                .cornerRadius(8.0)
            VStack(alignment: .leading, spacing: 11) {
                VStack(alignment: .leading, spacing: 1) {
                    Text("Saison \(viewModel.seasonNumber)")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("\(viewModel.episodesCount) épisodes")
                        .foregroundColor(Color.white.opacity(0.5))
                        .font(.caption)
                        .lineLimit(1)
                } // VSTACK
                Text(viewModel.description)
                    .font(.callout)
                    .fontWeight(.light)
                    .lineLimit(4)
            } // VSTACK
            Spacer()
        } // HSTACK
        .foregroundColor(.white)
        .padding(8)
    }
}

struct SeasonView_Previews: PreviewProvider {
    
    static let viewModel = SeasonModel(
        imageURL: URL(string: "https://www.themoviedb.org/t/p/w260_and_h390_bestv2/lXS60geme1LlEob5Wgvj3KilClA.jpg"),
        seasonNumber: 2,
        episodesCount: 9,
        description: "La saison 2 de Stranger Things a été diffusée à partir du 27 octobre 2017."
    )
    
    static var previews: some View {
        SeasonView(viewModel: viewModel)
        .previewLayout(.sizeThatFits)
        .background(Color(red: 88/255, green: 32/255, blue: 53/255))
    }
}
