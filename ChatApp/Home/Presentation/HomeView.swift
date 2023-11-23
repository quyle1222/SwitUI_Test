//
//  HomeView.swift
//  ChatApp
//
//  Created by TuPT on 15/11/2023.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var mainViewModel: MainViewModel
    @StateObject var viewModel: HomeViewModel

    init () {
        _viewModel = StateObject(wrappedValue: HomeViewModel())
    }

    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                viewModel.channelList
                    .onAppear {
                        viewModel.loadChannelList()
                    }
            }
            .alert(isPresented: $viewModel.isPresentAlert) {
                Alert(
                    title: Text("Error"),
                    message: Text(viewModel.channelListError?.localizedDescription ?? "Unknown Error"),
                    dismissButton: .default(Text("OK")) {
                        viewModel.isPresentAlert = false // Dismiss the alert
                    }
                )
            }
        }
    }
}
