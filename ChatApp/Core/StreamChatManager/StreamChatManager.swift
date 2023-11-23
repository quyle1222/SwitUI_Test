//
//  StreamChatManager.swift
//  ChatApp
//
//  Created by TuPT on 23/11/2023.
//

import Foundation
import StreamChat

final class StreamChatManager {
    static let shared = StreamChatManager()

    var chatClient: ChatClient

    init() {
         chatClient = {
            var config = ChatClientConfig(apiKey: .init("adqh66p965pq"))
            config.isLocalStorageEnabled = true
            config.applicationGroupIdentifier = "group.io.getstream.iOS.ChatApp"
            let client = ChatClient(config: config)
            return client
        }()
    }
}
