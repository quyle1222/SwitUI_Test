//
//  PokemonDetailViewModel.swift
//  ChatApp
//
//  Created by TuPT on 15/11/2023.
//

import SwiftUI

class PokemonDetailViewModel: ObservableObject {
    @Published var model: PokemonDetailEntity?

    let pokemonDetailUseCase: GetPokemonDetailUseCase

    init(pokemonDetailUseCase: GetPokemonDetailUseCase) {
        self.pokemonDetailUseCase = pokemonDetailUseCase
    }

    @MainActor
    func getDetai(id: Int) {
        Task {
            do {
                let detail = try await pokemonDetailUseCase.execute(id: id)
                model = detail
            } catch {
                print("Error occurred: \(error)")
            }
        }
    }
}
