//  MainTabView.swift
//  ChatApp
//
//  Created by TuPT on 15/11/2023.
//

import SwiftUI

struct MainTabView: View {
    @StateObject var viewModel = MainViewModel()
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .clipped()

            PokemonExploreView()
                .tabItem {
                    Image(systemName: "list.bullet.indent")
                    Text("List")
                }
                .clipped()
        }
        .environmentObject(viewModel)
        .tabViewStyle(.automatic)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
