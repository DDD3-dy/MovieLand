//
//  MovieCellView.swift
//  MovieLand
//
//  Created by Dylan Caetano on 15/02/2022.
//

import SwiftUI
import Kingfisher

struct MovieCellView: View {
    var body: some View {
        HStack {
            KFImage(URL(string: "https://www.themoviedb.org/t/p/w1280/joCCbrgiXbVxcpnWOzrIwNz8tC6.jpg"))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 150)
                .clipped()
                .cornerRadius(8.0)
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Stranger Things")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Text("Saison + types + ect")
                            .foregroundColor(Color.white.opacity(0.5))
                            .font(.caption)
                            .lineLimit(1)
                    } // VSTACK
                    Spacer()
                    CircleProgressBarView(progress: 8.3)
                        .frame(width: 45, height: 45)
                        .padding(2.5)
                } // HSTACK
                Text("Quand un jeune garçon disparaît, une petite ville découvre une affaire mystérieuse, des expériences secrètes, des forces surnaturelles terrifiantes... et une fillette.")
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
    static var previews: some View {
        MovieCellView()
            .previewLayout(.sizeThatFits)
    }
}
