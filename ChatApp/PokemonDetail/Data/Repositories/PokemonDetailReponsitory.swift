//
//  PokemonDetailReponsitory.swift
//  ChatApp
//
//  Created by TuPT on 15/11/2023.
//

import Foundation

class PokemonDetailReponsitory: PokeDetailReponsitoryProtocol {
    let dataSource = PokemonDetailDataSource()
    func getPokemonById(id: Int) async throws -> PokemonDetailEntity? {
       let data = try? await dataSource.getPokemonDetail(id: id)

        let pokemonDetail = PokemonDetailEntity(data)
        return pokemonDetail
    }
}
