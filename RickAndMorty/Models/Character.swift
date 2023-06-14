//
//  Character.swift
//  RickAndMorty
//
//  Created by Samuel Baraka on 14/06/2023.
//

import Foundation


struct RickAndMortyCharacter: Codable, Hashable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: CharacterLocation
    let location: CharacterLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

struct CharacterLocation: Codable, Hashable {
    let name: String
    let url: String
}
