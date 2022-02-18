//
//  ActorCellView.swift
//  MovieLand
//
//  Created by Dylan Caetano on 18/02/2022.
//

import SwiftUI
import Kingfisher

struct ActorCellView: View {
    
    let url: URL?
    let name: String
    let characterName: String
    
    var body: some View {
        VStack {
            KFImage(url)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            Text(name)
                .font(.footnote)
                .fontWeight(.semibold)
            Text(characterName)
                .font(.caption2)
                .foregroundColor(Color.white.opacity(0.5))
        } // VSTACK
        .fixedSize(horizontal: false, vertical: true)
        .padding(4)
        .foregroundColor(.white)
    }
}

struct ActorCellView_Previews: PreviewProvider {
    static var previews: some View {
        ActorCellView(url: URL(
                        string: "https://www.themoviedb.org/t/p/w1280/2qhIDp44cAqP2clOgt2afQI07X8.jpg"),
                      name: "Tom Holland",
                      characterName: "Spider-man"
            )
            .frame(width: 120)
            .background(Color(red: 88/255, green: 32/255, blue: 53/255))
            .previewLayout(.sizeThatFits)
    }
}
