//
//  ChannelListFactory.swift
//  ChatApp
//
//  Created by Tú Phạm on 23/11/2023.
//

import Foundation
import StreamChatSwiftUI
import SwiftUI

class ChannelListFactory: ChannelListViewProtocol {
    typealias LoadingContent = CustomListChannelsLoadingView
    typealias NoChannels = CustomNoChannelView

    @Injected(\.fonts) private var fonts
    @Injected(\.colors) private var colors
    @Injected(\.chatClient) public var chatClient

    private init() {}

    public static let shared = ChannelListFactory()

    func makeChannelListDividerItem() -> some View {
        Divider()
    }

    func makeLoadingView() -> CustomListChannelsLoadingView {
        CustomListChannelsLoadingView()
    }

    func makeNoChannelsView() -> CustomNoChannelView {
        CustomNoChannelView()
    }
}
