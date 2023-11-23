//
//  PokemonDetailDataSource.swift
//  ChatApp
//
//  Created by TuPT on 15/11/2023.
//

import Foundation

class PokemonDetailDataSource {

    func getPokemonDetail(id: Int) async throws -> PokemonDetailResponse {
        guard let url: URL = Constants.APIEndpoint.getPokemonDetails(id: id).url else {
            throw URLError(.badURL)
        }
        return try await NetworkUtils.shared.fetch(from: url)
    }
}
