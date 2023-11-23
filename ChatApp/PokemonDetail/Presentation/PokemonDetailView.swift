import SwiftUI

struct PokemonDetailView: View {
    @StateObject var viewModel: PokemonDetailViewModel

    let id: Int

    init(id: Int) {
        self.id = id
        self._viewModel = StateObject(wrappedValue: PokemonDetailViewModel(
            pokemonDetailUseCase: GetPokemonDetailUseCase(getPokemonDetailReponsitory: PokemonDetailReponsitory())
        ))
    }

    var body: some View {
        VStack {
            if let model = viewModel.model {
                PokemonDetailItemView(data: model)
            } else {
                ProgressView()
            }
        }
        .task {
            viewModel.getDetai(id: id)
        }
    }
}

struct PokemonDetailItemView: View {
    let data: PokemonDetailEntity
    var body: some View {
        VStack {
            Text("Name: \(data.name?.firstUppercased ?? "")")
            CacheAsyncImage(url: URL(string: data.url ?? "")!) { image in
                if let image = image.image {
                    image
                        .resizable()
                } else {
                    ProgressView()
                }
            }
            .frame(width: 200, height: 200)
            .scaledToFill()
            Text(String(data.height ?? 0))
            Spacer()
        }
    }
}
