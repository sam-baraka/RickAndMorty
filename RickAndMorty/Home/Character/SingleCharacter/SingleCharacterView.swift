//
//  SingleCharacterView.swift
//  RickAndMorty
//
//  Created by Samuel Baraka on 14/06/2023.
//

import SwiftUI

struct SingleCharacterView: View {
    @StateObject private var viewModel = SingleCharacterViewModel()
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SingleCharacterView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCharacterView()
    }
}
