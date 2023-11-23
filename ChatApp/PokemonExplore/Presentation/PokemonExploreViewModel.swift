//
//  PokemonExploreViewModel.swift
//  ChatApp
//
//  Created by TuPT on 15/11/2023.
//

import SwiftUI

class PokemonExploreViewModel: ObservableObject {
    let getPokemonListUseCase: GetPokemonListUseCase
    let limit: Int = 20

    @Published var pokemonList: [PokemonEntity] = []
    @Published var offset: Int = 0

    init(useCase: GetPokemonListUseCase) {
        self.getPokemonListUseCase = useCase
    }

    @MainActor
    func loadMore() {
        Task {
            do {
                let newPokemonList = try await getPokemonListUseCase.execute(limit: limit, offset: offset)
                pokemonList += newPokemonList
                offset += newPokemonList.count
            } catch {
                print("Error occurred: \(error)")
            }
        }
    }
}
