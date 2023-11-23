//
//  ChannelListViewProtocol.swift
//  ChatApp
//
//  Created by Tú Phạm on 23/11/2023.
//

import StreamChatSwiftUI
import SwiftUI

protocol ChannelListViewProtocol: ViewFactory
where NoChannels: View,
      LoadingContent: View {

    func makeLoadingView() -> LoadingContent
    func makeNoChannelsView() -> NoChannels
}
