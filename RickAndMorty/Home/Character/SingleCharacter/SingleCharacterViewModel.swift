//
//  SingleCharacterViewModel.swift
//  RickAndMorty
//
//  Created by Samuel Baraka on 14/06/2023.
//

import Foundation


class SingleCharacterViewModel : ObservableObject {
    @Published var character: RickAndMortyCharacter?
    
    func fetchCharacter(id: String) {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character/\(id)") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error fetching character: \(error)")
                return
            }
            
            guard let data = data else {
                print("No data received")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let result = try decoder.decode(RickAndMortyCharacter.self, from: data)
                DispatchQueue.main.async {
                    self.character = result
                }
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }.resume()
    }
}

