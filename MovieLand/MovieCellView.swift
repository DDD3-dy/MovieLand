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
            KFImage(URL(string: "https://www.themoviedb.org/t/p/w1280/3SyG7dq2q0ollxJ4pSsrqcfRmVj.jpg"))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 150)
                .clipped()
                .cornerRadius(8.0)
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Spider-Man : No Way Home")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Text("Saison + types + ect")
                            .foregroundColor(Color.white.opacity(0.5))
                            .font(.caption)
                            .lineLimit(1)
                    } // VSTACK
                    Spacer()
                    Text("Note")
                } // HSTACK
                Text("Après les évènements liés à l'affrontement avec Mystério, l'identité secrète de Spider-Man a été révélée. Il est poursuivi par le gouvernement américain, qui l'accuse du meurtre de Mystério, et est traqué par les médias. Cet évènement a également des conséquences terribles sur la vie de sa petite-amie M. J. et de son meilleur ami Ned. Désemparé, Peter Parker demande alors de l'aide au Docteur Strange. Ce dernier lance un sort pour que tout le monde oublie que Peter est Spider-Man. Mais les choses ne se passent pas comme prévu et cette action altère la stabilité de l'espace-temps. Cela ouvre le « Multivers », un concept terrifiant dont ils ne savent quasiment rien.")
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
