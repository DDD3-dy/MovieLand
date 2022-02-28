//
//  HomeIView.swift
//  MovieLand
//
//  Created by Dylan Caetano on 20/02/2022.
//

import SwiftUI

struct HomeView: View {
    
    let movieRepository = RealMovieRepository()
    @EnvironmentObject var appState: AppState
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
        appearance.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().standardAppearance = appearance
        
        UINavigationBar.appearance().backgroundColor = UIColor(displayP3Red: 88/255, green: 32/255, blue: 53/255, alpha: 0)
        UINavigationBar.appearance().tintColor = .white
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            NavigationView {
                ScrollView {
                    ForEach(appState.series) { medium in
                      let viewModel = MovieCellModel(
                        imageURL: medium.imageURL,
                        title: medium.title,
                        seasonCount: medium.seasons.count,
                        genres: medium.genres,
                        rating: medium.rating,
                        description: medium.description
                        )
                       NavigationLink(
                        destination: DetailView(serie: medium),
                        label: {
                            MovieCellView(viewModel: viewModel)
                        }
                      ) // NAVTIONLINK
                    }
                } // SCROLL
                .navigationTitle("MovieLand")
                .background(Color(red: 88/255, green: 32/255, blue: 53/255).ignoresSafeArea())
            } // NAVIGATION
            .onAppear(perform: {
                loadSeries()
            })
        } // ZSTACK
    }
    
    func loadSeries() {
        MovieInteractor().getSeries { series in
            DispatchQueue.main.async {
                appState.series = series
            }
        }
    }
}

struct HomeIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(AppState.preview)
    }
}
