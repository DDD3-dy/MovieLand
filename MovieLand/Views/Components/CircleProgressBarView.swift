//
//  CircleProgressBarView.swift
//  MovieLand
//
//  Created by Dylan Caetano on 17/02/2022.
//

import SwiftUI

struct CircleProgressBarView: View {
    
    let progress: Float
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.white.opacity(0.2), lineWidth: 5.0)
            Circle()
                .trim(from: 0.0, to: CGFloat(min(progress / 10, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 5.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color(red: 23/300, green: 103/320, blue: 130/130))
                .rotationEffect(Angle(degrees: 270))
            Text(String(format: "%.1f", progress))
                .foregroundColor(.white)
        } // ZSTACK
    }
}

struct CircleProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleProgressBarView(progress: 5.4)
            CircleProgressBarView(progress: 7.0)
            CircleProgressBarView(progress: 8.1)
        }
        .frame(width: 50, height: 50)
        .padding()
        .background(Color(red: 88/255, green: 32/255, blue: 53/255))
        .previewLayout(.sizeThatFits)

    }
}
