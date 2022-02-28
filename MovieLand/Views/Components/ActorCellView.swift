//
//  ActorCellView.swift
//  MovieLand
//
//  Created by Dylan Caetano on 18/02/2022.
//

import SwiftUI
import Kingfisher

struct ActorCellView: View {
    
    let viewModel: ActorCellModel
    
    var body: some View {
        VStack {
            KFImage(viewModel.url)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            Text(viewModel.name)
                .font(.footnote)
                .fontWeight(.semibold)
            Text(viewModel.characterName)
                .font(.caption2)
                .foregroundColor(Color.white.opacity(0.5))
        } // VSTACK
        .fixedSize(horizontal: false, vertical: true)
        .padding(4)
        .foregroundColor(.white)
        .clipped()
    }
}

struct ActorCellView_Previews: PreviewProvider {
    
    static let viewModel = ActorCellModel(
        url: URL(string: "https://www.themoviedb.org/t/p/w1280/fEn0HyzdwVD6VxvVvff7JMbkHQX.jpg"),
        name: "Joe Keery",
        characterName: "Steve Harrington"
    )
    
    static var previews: some View {
        ActorCellView(viewModel: viewModel)
            .frame(width: 120)
            .background(Color(red: 88/255, green: 32/255, blue: 53/255))
            .previewLayout(.sizeThatFits)
    }
}
