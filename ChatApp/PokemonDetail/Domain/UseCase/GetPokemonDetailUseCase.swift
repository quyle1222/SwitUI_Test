//
//  GetPokemonDetailUseCase.swift
//  ChatApp
//
//  Created by TuPT on 15/11/2023.
//

import Foundation

class GetPokemonDetailUseCase {
    let getPokemonDetailReponsitory: PokeDetailReponsitoryProtocol

    init(getPokemonDetailReponsitory: PokeDetailReponsitoryProtocol) {
        self.getPokemonDetailReponsitory = getPokemonDetailReponsitory
    }

    func execute(id: Int) async throws -> PokemonDetailEntity? {
        return try await getPokemonDetailReponsitory.getPokemonById(id: id)
    }
}
