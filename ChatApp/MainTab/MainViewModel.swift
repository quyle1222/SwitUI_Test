//
//  MainViewModel.swift
//  ChatApp
//
//  Created by TuPT on 23/11/2023.
//

import Foundation
import StreamChatSwiftUI

class MainViewModel: ObservableObject {
    @Published var isLogined: Bool = false
    @Published var streamChat: StreamChat?

    init() {
        let chatClient = StreamChatManager.shared.chatClient
        streamChat = StreamChat(chatClient: chatClient)
    }
}
