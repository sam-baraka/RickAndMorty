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
           
            VStack{
                if viewModel.isLoading{
                    ProgressView()
                }else{List(viewModel.characters, id: \.id) { character in
                    CharacterListItem(
                        character: character)
                }
                .navigationTitle("Rick and Morty Characters")
                    
                }} .onAppear {
            viewModel.fetchCharacters()
        }}
    }
}

struct CharactersListView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersListView()
    }
}
