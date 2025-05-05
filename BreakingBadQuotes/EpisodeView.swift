//
//  EpisodeView.swift
//  BreakingBadQuotes
//
//  Created by Jesus Marcano on 24/4/25.
//

import SwiftUI

struct EpisodeView: View {
    let episode: Episode
    var body: some View {
        VStack(alignment: .leading) {
            Text(episode.title)
                .font(.largeTitle)
            
            Text(episode.seasonEpisode)
                .font(.title2)
            
            AsyncImage(url: episode.image) {image in
                image
                    .resizable()
                    .scaledToFit()
                    .clipShape(.rect(cornerRadius: 15))
            } placeholder: {
                ProgressView()
            }
            Text(episode.synopsis)
                .font(.title3)
                .minimumScaleFactor(0.50)
                .padding(.bottom)
            
            Text("Written By: \(episode.writtenBy)")
            Text("Directed By: \(episode.directedBy)")
            Text("Aired: \(episode.airDate)")
            
        }
        .padding()
        .foregroundStyle(.white)
        .background(.ultraThickMaterial)
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    EpisodeView(episode: ViewModel().episode)
}
