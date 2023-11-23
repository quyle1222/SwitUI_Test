//
//  PokemonExploreView.swift
//  ChatApp
//
//  Created by TuPT on 14/11/2023.
//

import Foundation
import SwiftUI

struct PokemonExploreView: View {
    @StateObject var viewModel: PokemonExploreViewModel

    init() {
        let useCase = GetPokemonListUseCase(pokeDexRepository: PokeDexRepository.shared)
        self._viewModel = StateObject(wrappedValue: PokemonExploreViewModel(useCase: useCase))
        UITableView.appearance().allowsSelection = false
        UITableViewCell.appearance().selectionStyle = .none
    }

    var body: some View {
        NavigationView {
            VStack {
                Text("Explore")
                List {
                    ForEach(viewModel.pokemonList, id: \.self) { pokemon in
                        ZStack {
                            PokemonListView(pokemon: pokemon)
                                .onAppear(perform: {
                                    if viewModel.pokemonList.last == pokemon {
                                        viewModel.loadMore()
                                    }
                                })
                            NavigationLink(destination: PokemonDetailView(id: pokemon.id)) {
                               EmptyView()
                            }
                            .opacity(0.0)
                        }
                    }
                }
                .listStyle(PlainListStyle())
                .task {
                    viewModel.loadMore()
                }
            }
        }
    }
}
