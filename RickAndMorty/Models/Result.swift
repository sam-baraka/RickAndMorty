//
//  Result.swift
//  RickAndMorty
//
//  Created by Samuel Baraka on 14/06/2023.
//

import Foundation

struct Results<T: Codable>: Codable {
    let results: [T]
}
