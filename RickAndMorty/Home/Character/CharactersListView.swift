//
//  CharactersListView.swift
//  RickAndMorty
//
//  Created by Samuel Baraka on 14/06/2023.
//

import SwiftUI

struct CharactersListView: View {
    @StateObject private var viewModel = CharacterViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.characters, id: \.id) { character in
                VStack(alignment: .leading) {
                    URLImage(url: character.image)
                        .frame(width: 80, height: 80)
                        .cornerRadius(8)
                    
                    Text(character.name)
                        .font(.headline)
                    
                    Text(character.species)
                        .font(.subheadline)
                }
            }
            .navigationTitle("Rick and Morty Characters")
            .onAppear {
                viewModel.fetchCharacters()
            }
        }
    }
}

struct CharactersListView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersListView()
    }
}
