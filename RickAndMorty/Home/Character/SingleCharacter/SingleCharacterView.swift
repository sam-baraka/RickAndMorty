//
//  SingleCharacterView.swift
//  RickAndMorty
//
//  Created by Samuel Baraka on 14/06/2023.
//

import SwiftUI

struct SingleCharacterView: View {
    @StateObject private var viewModel = SingleCharacterViewModel()
    private let id: String
    init(id: String) {
     
        self.id = id
    }
    
    var body: some View {
        VStack{
            if viewModel.isLoading{
                ProgressView()
            }else{
                if let character=viewModel.character {
                    ScrollView {
                        VStack(spacing: 0) {
                            
                            VStack(spacing: 16) {
                                URLImage(url:character.image)
                                    .frame(width: 200, height: 200)
                                    .cornerRadius(10)
                                
                                Text(character.name)
                                    .font(.title)
                                
                                Text("Status: \(character.status)")
                                    .font(.headline)
                                
                                Text("Species: \(character.species)")
                                    .font(.headline)
                                
                                Text("Gender: \(character.gender)")
                                    .font(.headline)
                                
                                Spacer()
                                VStack(alignment: .leading) {
                                               Text("Episodes:")
                                                   .font(.headline)
                                                   .padding(.bottom, 4)
                                               
                                               ForEach(character.episode, id: \.self) { episode in
                                                   Text(episode)
                                               }
                                           }
                            }
                            .padding()}
                        
                    }
                    
                }}
        }.onAppear{
            viewModel.fetchCharacter(id: id)
        }
    }
}

struct SingleCharacterView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCharacterView(
        id: "2"
        )
    }
}
