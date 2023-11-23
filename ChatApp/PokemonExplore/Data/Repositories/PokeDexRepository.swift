//
//  PokeDexRepository.swift
//  ChatApp
//
//  Created by TuPT on 14/11/2023.
//

import Foundation

class PokeDexRepository: PokeDexRepositoryProtocol {
    static let shared = PokeDexRepository()

    private let pokeDexDataSource = PokeDexDataSource()

    func fetchPokemons(limit: Int, offset: Int) async throws -> [PokemonEntity] {
        let pokemons = try await pokeDexDataSource.fetchPokemons(limit: limit, offset: offset)
        let pokemonEntities: [PokemonEntity] = pokemons.results.compactMap { pokemon in
            return PokemonEntity(pokemonResponse: pokemon)
        }
        return pokemonEntities
    }
}
