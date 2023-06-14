//
//  EpisodeListItemView.swift
//  RickAndMorty
//
//  Created by Samuel Baraka on 14/06/2023.
//

import SwiftUI

import SwiftUI

struct EpisodeListItemView: View {
    let episode: Episode
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(episode.name)
                .font(.headline)
            
            Text("Air Date: \(episode.airDate)")
                .font(.subheadline)
            
            Text("Episode: \(episode.episode)")
                .font(.subheadline)
            
            Spacer()
        }
        .padding()
    }
}


//struct EpisodeListItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        EpisodeListItemView()
//    }
//}
