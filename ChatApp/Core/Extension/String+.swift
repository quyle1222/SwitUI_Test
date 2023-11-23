//
//  String+.swift
//  ChatApp
//
//  Created by TuPT on 16/11/2023.
//

import Foundation

extension StringProtocol {
    var firstUppercased: String { return prefix(1).uppercased() + dropFirst() }
    var firstCapitalized: String { return prefix(1).capitalized + dropFirst() }
}
