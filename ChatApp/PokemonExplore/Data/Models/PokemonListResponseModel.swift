//
//  PokemonListResponseModel.swift
//  ChatApp
//
//  Created by TuPT on 14/11/2023.
//

import Foundation

struct PokemonListResponseModel: Codable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [PokemonResponseModel]
}
