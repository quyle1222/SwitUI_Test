//
//  PokemonDetailEntity.swift
//  ChatApp
//
//  Created by TuPT on 15/11/2023.
//

import Foundation

struct PokemonDetailEntity: Hashable {
    let id: Int?
    let url: String?
    let weight: Int?
    let height: Int?
    let name: String?

    init?(_ data: PokemonDetailResponse?) {
        self.id = data?.id
        self.url = data?.sprites?.frontDefault
        self.weight = data?.weight
        self.height = data?.height
        self.name = data?.name
    }
}
