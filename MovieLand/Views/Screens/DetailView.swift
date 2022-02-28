//
//  DetailView.swift
//  MovieLand
//
//  Created by Dylan Caetano on 24/02/2022.
//

import SwiftUI

struct DetailView: View {
    
    let serie: Serie
    
    var body: some View {
        ScrollView {
            let movieDetailViewModel = MovieDetailHeaderModel(
                imageURL: serie.imageURL,
                title: serie.title,
                seasonsCount: serie.seasons.count,
                genres: serie.genres,
                rating: serie.rating
            )
            MovieDetailHeaderView(viewModel: movieDetailViewModel)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(serie.casting) { actor in
                        let actorCellViewModel = ActorCellModel(
                            url: actor.url,
                            name: actor.name,
                            characterName: actor.characterName
                        )
                        ActorCellView(viewModel: actorCellViewModel)
                            .frame(width: 110)
                    }
                } // HSTACK
            } // SCROLLVIEW ACTOR
            
            ForEach(serie.seasons) { season in
                let seasonViewModel = SeasonModel(
                    imageURL: season.imageURL,
                    seasonNumber: season.seasonNumber,
                    episodesCount: season.episodesCount,
                    description: season.description
                )
                SeasonView(viewModel: seasonViewModel)
            }
        } // SCROLLVIEW
        .background(Color(red: 88/255, green: 32/255, blue: 53/255).ignoresSafeArea())
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(serie: mockedSerie)
    }
}
