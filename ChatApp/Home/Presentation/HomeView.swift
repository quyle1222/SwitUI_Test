//
//  HomeView.swift
//  ChatApp
//
//  Created by TuPT on 15/11/2023.
//

import SwiftUI
import StreamChatSwiftUI

struct HomeView: View {
    private enum Const {
        static let title = "Channel List"
    }
    
    @EnvironmentObject var mainViewModel: MainViewModel
    
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                ChatChannelListScreen(title: Const.title)
            }
        }
    }
    
}
