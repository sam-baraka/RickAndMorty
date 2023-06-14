//
//  CharactersListViewModel.swift
//  RickAndMorty
//
//  Created by Samuel Baraka on 14/06/2023.
//

import Foundation



struct Results<T: Codable>: Codable {
    let results: [T]
}

class CharacterViewModel: ObservableObject {
    @Published var characters: [RickAndMortyCharacter] = []
    
    func fetchCharacters() {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let result = try decoder.decode(Results<RickAndMortyCharacter>.self, from: data)
                DispatchQueue.main.async {
                    self.characters = result.results
                }
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }.resume()
    }
}
