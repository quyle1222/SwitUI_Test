//
//  PokemonEntity.swift
//  ChatApp
//
//  Created by TuPT on 14/11/2023.
//

import Foundation

struct PokemonEntity: Hashable {
    let id: Int
    let name: String
    var imageURL: URL?

    init?(pokemonResponse: PokemonResponseModel) {
        guard let urlComponents = URLComponents(string: pokemonResponse.url),
              let idString = urlComponents.path.split(separator: "/").last,
              let id = Int(idString) else {
            return nil
        }

        self.id = id
        self.name = pokemonResponse.name
        self.imageURL = Constants.APIEndpoint.getPokemonImage(id: id).url
    }
}
