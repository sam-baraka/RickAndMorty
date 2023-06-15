//
//  SingleEpisodeView.swift
//  RickAndMorty
//
//  Created by Samuel Baraka on 14/06/2023.
//

import SwiftUI


struct SingleEpisodeView: View {
    let episode: Episode
    
    var body: some View {
        ScrollView{VStack(alignment: .leading, spacing: 16) {
            Text(episode.name)
                .font(.title)
            
            Text("Air Date: \(episode.airDate)")
                .font(.subheadline)
            
            Text("Episode: \(episode.episode)")
                .font(.subheadline)
            
            Divider()
            
            Text("Characters")
                .font(.headline)
            
            ForEach(episode.characters, id: \.self) { characterURL in
                NavigationLink(destination: SingleCharacterView() ) {
                    Text(characterURL)
                }
            }
            
            Spacer()
        }
        .padding()
        .navigationBarTitle("Episode Details", displayMode: .inline)
        }}
}


//struct SingleEpisodeView_Previews: PreviewProvider {
//    static var previews: some View {
//        SingleEpisodeView()
//    }
//}
