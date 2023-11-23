//
//  PokeDexRepositoryProtocol.swift
//  ChatApp
//
//  Created by TuPT on 14/11/2023.
//

import Foundation

protocol PokeDexRepositoryProtocol {
    func fetchPokemons(limit: Int, offset: Int) async throws -> [PokemonEntity]
}
