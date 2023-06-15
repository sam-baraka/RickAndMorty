//
//  URLImage.swift
//  RickAndMorty
//
//  Created by Samuel Baraka on 14/06/2023.
//

import SwiftUI

import Combine

struct URLImage: View {
    @StateObject private var imageLoader: ImageLoader
    
    init(url: String?) {
        _imageLoader = StateObject(wrappedValue: ImageLoader(url: url ?? "https://rickandmortyapi.com/api/character/avatar/1.jpeg"))
    }
    
    var body: some View {
        if let image = imageLoader.image {
            Image(uiImage: image)
                .resizable()
        } else {
            ProgressView()
                .onAppear {
                    imageLoader.loadImage()
                }
        }
    }
}

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    private let url: String
    private var cancellable: AnyCancellable?
    
    init(url: String) {
        self.url = url
    }
    
    func loadImage() {
        guard let url = URL(string: url) else {
            return
        }
        
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { UIImage(data: $0.data) }
            .replaceError(with: nil)
            .receive(on: DispatchQueue.main)
            .assign(to: \.image, on: self)
    }
}
struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(
            url: "https://rickandmortyapi.com/api/character/avatar/1.jpeg"
        )
    }
}
