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
            Text(id)
        }.onAppear{
            viewModel.fetchCharacter(id: id)
        }
    }
}

struct SingleCharacterView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCharacterView(
        id: "1"
        )
    }
}
