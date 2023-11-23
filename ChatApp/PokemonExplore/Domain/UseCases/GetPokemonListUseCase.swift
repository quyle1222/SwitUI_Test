//
//  GetPokemonListUseCase.swift
//  ChatApp
//
//  Created by TuPT on 14/11/2023.
//

import Foundation

class GetPokemonListUseCase {
    let pokeDexRepository: PokeDexRepositoryProtocol

    init(pokeDexRepository: PokeDexRepositoryProtocol) {
        self.pokeDexRepository = pokeDexRepository
    }

    func execute(limit: Int, offset: Int) async throws -> [PokemonEntity] {
        return try await pokeDexRepository.fetchPokemons(limit: limit, offset: offset)
    }
}
