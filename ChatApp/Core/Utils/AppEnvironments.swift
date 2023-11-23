//
//  AppEnvironments.swift
//  ChatApp
//
//  Created by TuPT on 23/11/2023.
//

import Foundation

struct AppEnvironments {
    static let shared = AppEnvironments()

    var enviromentMode: String!
    var streamChatID: String!
    var streamChatToken: String!
    var streamChatSecret: String!

    private init() {
        self.enviromentMode = getValue(key: "enviroment_mode")
        self.streamChatID = getValue(key: "stream_chat_id")
        self.streamChatToken = getValue(key: "stream_chat_token")
        self.streamChatSecret = getValue(key: "stream_chat_secret")
    }

    private func getValue<T>(key: String) -> T {
        guard let value = Bundle.main.object(forInfoDictionaryKey: key) as? T else {
            fatalError("Error get enviroment")
        }
        return value
    }
}
