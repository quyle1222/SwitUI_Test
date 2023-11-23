//
//  AppEnvironments.swift
//  ChatApp
//
//  Created by TuPT on 23/11/2023.
//

import Foundation

struct AppEnvironments {
    static let shared = AppEnvironments()
    
    var enviromentMode: String?
    var streamChatID: String?
    var streamChatToken: String?
    var streamChatSecret: String?
    
    private init() {
        enviromentMode = getValue(key: "enviroment_mode")
        streamChatID = getValue(key: "stream_chat_id")
        streamChatToken = getValue(key: "stream_chat_token")
        streamChatSecret = getValue(key: "stream_chat_secret")
    }
    
    private func getValue<T>(key: String) -> T? {
        return Bundle.main.object(forInfoDictionaryKey: key) as? T
    }
}
