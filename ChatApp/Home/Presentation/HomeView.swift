//
//  HomeView.swift
//  ChatApp
//
//  Created by TuPT on 15/11/2023.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var mainViewModel: MainViewModel

    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                Text(AppEnvironments.shared.streamChatToken ?? "")
            }
        }
    }
}
