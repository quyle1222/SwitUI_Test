//
//  PokeDetailReponsitoryProtocol.swift
//  ChatApp
//
//  Created by TuPT on 15/11/2023.
//

import Foundation

protocol PokeDetailReponsitoryProtocol {
    func getPokemonById(id: Int) async throws -> PokemonDetailEntity?
}
