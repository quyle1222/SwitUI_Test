//
//  CustomChannelListHeaderView.swift
//  ChatApp
//
//  Created by TuPT on 24/11/2023.
//

import SwiftUI
import StreamChatSwiftUI
struct CustomChannelModifier: ChannelListHeaderViewModifier {
    var title: String

    func body(content: Content) -> some View {
        content.toolbar {
            CustomChannelHeader(title: title)
        }
    }
}

struct CustomChannelHeader: ToolbarContent {
    @Injected(\.fonts) var fonts
    @Injected(\.images) var images
    @Injected(\.chatClient) var chatClient

    public var title: String

    public var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            NavigationLink {
                Text("This is injected view")
            } label: {
                Image(uiImage: images.messageActionEdit)
                    .resizable()
                    .foregroundStyle(.black)
            }
        }

        ToolbarItem(placement: .principal) {
            Text(title)
                .font(fonts.bodyBold)
        }

        ToolbarItem(placement: .navigationBarLeading) {
            Button {

            } label: {
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .foregroundStyle(.black)
            }
        }
    }
}

struct LeftView: View {
    var body: some View {
        VStack {
            Text("This is injected view")
        }
    }
}
