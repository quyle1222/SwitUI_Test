//
//  Constants.swift
//  ChatApp
//
//  Created by TuPT on 14/11/2023.
//

import Foundation

struct Constants {
    static let pokeApiURL: String = "https://pokeapi.co/api/v2/"
    static let pokeApiArtworkURL: String = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/%d.png"
    static let apiTimeoutInterval: Double = 15.0
    static let pokeApiPokemonListlimit: Int = 20
    static let randomAvatarURL: String = "https://api.multiavatar.com/%d"

    enum APIEndpoint {
        case getPokemonList(limit: Int, offset: Int)
        case getPokemonImage(id: Int)
        case getPokemonDetails(id: Int)
        case getAvatar(id: String)

        var url: URL? {
            switch self {
            case .getPokemonList(let limit, let offset):
                return URL(string: "\(pokeApiURL)pokemon?limit=\(limit)&offset=\(offset)")
            case .getPokemonImage(let id):
                return URL(string: String(format: Constants.pokeApiArtworkURL, id))
            case .getPokemonDetails(let id):
                return URL(string: "\(pokeApiURL)pokemon/\(id)/")
            case .getAvatar(let id):
                return URL(string: String(format: Constants.randomAvatarURL, id))
            }
        }
    }
}
