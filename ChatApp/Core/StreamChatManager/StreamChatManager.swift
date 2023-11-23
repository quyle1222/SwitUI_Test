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
            var config = ChatClientConfig(apiKey: .init(AppEnvironments.shared.streamChatToken))
            config.isLocalStorageEnabled = true
            config.applicationGroupIdentifier = "group.io.getstream.iOS.ChatApp"
            let client = ChatClient(config: config)
            return client
        }()
    }

    func connectUser(completion: @escaping (Error?)-> Void) {
        let token: Token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiY28tdHVwdCJ9.2ec1xSv1tUagWQXTtOOd5l6Nsxfom3QtK8DI2eMREg4"
        let userID = "co-tupt"
        let userInfo: UserInfo = UserInfo(
            id: userID,
            imageURL: Constants.APIEndpoint.getAvatar(id: userID).url
        )
        chatClient.connectUser(userInfo: userInfo, token: token, completion: completion)
    }
}
