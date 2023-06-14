//
//  EpisodesListView.swift
//  RickAndMorty
//
//  Created by Samuel Baraka on 14/06/2023.
//

import SwiftUI

struct EpisodesListView: View {
    @StateObject private var viewModel = EpisodesViewModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.episodes, id: \.id) { episode in
                EpisodeListItemView(episode: episode)
            }
            .navigationTitle("Rick and Morty Characters")
            .onAppear {
                viewModel.fetchEpisodes()
            }
        }}
    }


struct EpisodesListView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodesListView()
    }
}
