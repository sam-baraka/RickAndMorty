//
//  HomeView.swift
//  RickAndMorty
//
//  Created by Samuel Baraka on 14/06/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            CharactersListView()
                            .tabItem {
                                Label("Characters", systemImage: "person.3")
                            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
