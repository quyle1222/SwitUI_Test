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
    @Published var channelListError: Error?
    @Published var isPresentAlert: Bool = false

    init() {
        channelList = ChatChannelListView(
            viewFactory: ChannelListFactory.shared,
            embedInNavigationView: true
        )
    }

    func loadChannelList() {
        let chatClient = StreamChatManager.shared.chatClient
        let controller = chatClient.channelListController(query: .init(filter: .and([.equal(.type, to: .messaging)])))
        controller.synchronize {[unowned self] error in
            if let error = error {
                self.channelListError = error
                self.isPresentAlert = true
            }
        }
    }
}

extension HomeViewModel {
    private enum Const {
        static let title = "Channel List"
    }
}
