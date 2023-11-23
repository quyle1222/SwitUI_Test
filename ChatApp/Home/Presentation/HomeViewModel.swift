//
//  HomeViewModel.swift
//  ChatApp
//
//  Created by TuPT on 15/11/2023.
//

import Foundation
import StreamChatSwiftUI

class HomeViewModel: ObservableObject {
    @Published var channelList: ChatChannelListView<ChannelListFactory>

    init() {
        channelList = ChatChannelListView(
            viewFactory: ChannelListFactory.shared,
            embedInNavigationView: true
        )
    }
}

extension HomeViewModel {
    private enum Const {
        static let title = "Channel List"
    }
}
