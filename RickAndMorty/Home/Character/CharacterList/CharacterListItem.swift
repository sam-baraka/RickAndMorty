//
//  CharacterListItem.swift
//  RickAndMorty
//
//  Created by Samuel Baraka on 14/06/2023.
//

import SwiftUI

struct CharacterListItem: View {
    private let character: RickAndMortyCharacter
    
    init(character: RickAndMortyCharacter) {
        self.character = character
    }
    
    var body: some View {
        NavigationLink(destination: SingleCharacterView().navigationBarTitle(character.name, displayMode: .inline)
        
        ){HStack{
            URLImage(url: character.image)
                .frame(width: 80, height: 80)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text(character.name)
                    .font(.headline)
                
                Text(character.species)
                    .font(.subheadline)
            }
        }
            
        }
    }
}

//struct CharacterListItem_Previews: PreviewProvider {
//    static var previews: some View {
//        CharacterListItem(
//        character: RickM)
//    }
//}
