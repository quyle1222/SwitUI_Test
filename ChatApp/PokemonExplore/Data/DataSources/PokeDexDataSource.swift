//
//  PokeDexDataSource.swift
//  ChatApp
//
//  Created by TuPT on 14/11/2023.
//

import Foundation

class PokeDexDataSource {
    func fetchPokemons(limit: Int, offset: Int) async throws -> PokemonListResponseModel {
        guard let url: URL = Constants.APIEndpoint.getPokemonList(limit: limit, offset: offset).url else {
            throw URLError(.badURL)
        }
        return try await NetworkUtils.shared.fetch(from: url)
    }
}
