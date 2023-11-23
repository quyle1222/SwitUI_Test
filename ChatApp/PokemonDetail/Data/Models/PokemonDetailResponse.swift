//
//  PokemonDetailResponse.swift
//  ChatApp
//
//  Created by TuPT on 16/11/2023.
//

import Foundation
struct PokemonDetailResponse: Codable {
    let weight: Int?
    let height: Int?
    let name: String?
    let id: Int?
    let sprites: Sprites?
}

struct Sprites: Codable {
    let frontDefault: String?

    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
    }
}
