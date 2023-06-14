//
//  EpisodeViewModel.swift
//  RickAndMorty
//
//  Created by Samuel Baraka on 14/06/2023.
//

import Foundation


class EpisodesViewModel: ObservableObject {
    @Published var episodes: [Episode] = []
    
    func fetchEpisodes() {
        guard let url = URL(string: "https://rickandmortyapi.com/api/episode") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let result = try decoder.decode(Results<Episode>.self, from: data)
                DispatchQueue.main.async {
                    self.episodes = result.results
                }
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }.resume()
    }
}
