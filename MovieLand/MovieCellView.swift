//
//  MovieCellView.swift
//  MovieLand
//
//  Created by Dylan Caetano on 15/02/2022.
//

import SwiftUI
import Kingfisher

struct MovieCellView: View {
    
    let viewModel: MovieCellModel
    
    var body: some View {
        HStack {
            KFImage(viewModel.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 150)
                .clipped()
                .cornerRadius(8.0)
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(viewModel.title)
                            .font(.title2)
                            .fontWeight(.semibold)
                        Text("\(viewModel.seasonCount) saison | \(viewModel.genres.joined(separator: " • "))")
                            .foregroundColor(Color.white.opacity(0.5))
                            .font(.caption)
                            .lineLimit(1)
                    } // VSTACK
                    Spacer()
                    CircleProgressBarView(progress: viewModel.rating)
                        .frame(width: 45, height: 45)
                        .padding(2.5)
                } // HSTACK
                Text(viewModel.description)
                    .font(.callout)
                    .fontWeight(.light)
                    .lineLimit(4)
            } // VSTACK
        } // HSTACK
        .padding(8)
        .background(Color(red: 88/255, green: 32/255, blue: 53/255))
        .foregroundColor(.white)
    }
}

struct MovieCellView_Previews: PreviewProvider {
    
    static let viewModel = MovieCellModel(
        imageURL: URL(string: "https://www.themoviedb.org/t/p/w1280/joCCbrgiXbVxcpnWOzrIwNz8tC6.jpg"),
        title: "Stranger Things",
        seasonCount: 3,
        genres: ["Drame", "Mystère", "Science-Fiction", "Fantastique"],
        rating: 8.6,
        description: "La saison 2 de Stranger Things a été diffusée à partir du 27 octobre 2017.")
    
    static var previews: some View {
        MovieCellView(viewModel: viewModel)
            .previewLayout(.sizeThatFits)
    }
}
