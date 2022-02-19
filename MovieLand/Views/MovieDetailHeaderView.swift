//
//  MovieDetailHeaderView.swift
//  MovieLand
//
//  Created by Dylan Caetano on 18/02/2022.
//

import SwiftUI
import Kingfisher

struct MovieDetailHeaderView: View {
    
    let viewModel: MovieDetailHeaderModel
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                KFImage(viewModel.imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(viewModel.title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text("\(viewModel.seasonsCount) saisons" + " | " + viewModel.genres.joined(separator: " • "))
                            .foregroundColor(Color.white.opacity(0.6))
                            .font(.footnote)
                    } // VSTACK
                    Spacer()
                    CircleProgressBarView(progress: viewModel.rating)
                        .frame(width: 45, height: 45)
                        .padding(2.5)
                } // HSTACK
                .padding()
                .padding(.top, 200)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [.clear, Color(red: 88/255, green: 32/255, blue: 53/255)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            } // ZSTACK
            
        } // VSTACK
    }
}

struct MovieDetailHeaderView_Previews: PreviewProvider {
    
    static let viewModel = MovieDetailHeaderModel(
        imageURL: URL(string: "https://www.themoviedb.org/t/p/w1280/joCCbrgiXbVxcpnWOzrIwNz8tC6.jpg"),
        title: "Stranger Things",
        seasonsCount: 3,
        genres: ["Drame", "Mystère", "Science-Fiction", "Fantastique"],
        rating: 8.6
    )
    
    static var previews: some View {
        MovieDetailHeaderView(viewModel: viewModel)
        .previewLayout(.sizeThatFits)
    }
}
