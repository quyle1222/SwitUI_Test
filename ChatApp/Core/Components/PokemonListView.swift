//
//  PokemonListView.swift
//  ChatApp
//
//  Created by TuPT on 14/11/2023.
//

import SwiftUI

struct PokemonListView: View {
    let pokemon: PokemonEntity

    var body: some View {
        HStack {
            CacheAsyncImage(url: pokemon.imageURL!) { image in
                if let image = image.image {
                    image
                        .resizable()
                } else {
                    ProgressView()
                }
            }
            .frame(width: 100, height: 100)
            .scaledToFit()
            Text(pokemon.name.firstUppercased)
                .font(.system(size: 14, weight: .bold))
            Spacer()
        }
    }
}
