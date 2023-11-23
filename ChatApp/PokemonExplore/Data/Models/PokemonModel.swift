//
//  PokemonModel.swift
//  ChatApp
//
//  Created by TuPT on 14/11/2023.
//

import Foundation

struct PokemonResponseModel: Decodable, Encodable {
    let name: String
    let url: String
}
