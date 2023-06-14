//
//  Character.swift
//  RickAndMorty
//
//  Created by Samuel Baraka on 14/06/2023.
//

import Foundation

struct Info : Hashable,Codable{
    let count: Int
    let pages: Int
    let next: String
    let prev: String
}


struct RickAndMortyCharacter : Hashable, Codable{
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    let image: String
}
