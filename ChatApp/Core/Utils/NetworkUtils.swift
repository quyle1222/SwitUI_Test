//
//  NetworkUtils.swift
//  ChatApp
//
//  Created by TuPT on 14/11/2023.
//

import Foundation

enum Method: String {
    case POST
    case GET
    case UPDATE
    case DELETE
}

class NetworkUtils {
    static let shared = NetworkUtils()

    func fetch<T: Codable>(from url: URL) async throws -> T {
        var request = URLRequest(url: url)
        request.timeoutInterval = Constants.apiTimeoutInterval
        let (data, response) = try await URLSession.shared.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse, 200..<300 ~= httpResponse.statusCode else {
            throw URLError(.badServerResponse)
        }
        let decodedData = try JSONDecoder().decode(T.self, from: data)
        print("response \(String(data: data, encoding: .utf8) ?? "")")
        return decodedData
    }

    func fetch<T: Codable>(from url: URL, method: Method) async throws -> T {
        var request = URLRequest(url: url)
        request.timeoutInterval = Constants.apiTimeoutInterval
        request.httpMethod = method.rawValue
        request.setValue("", forHTTPHeaderField: "Authorization")
        let (data, response) = try await URLSession.shared.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse, 200..<300 ~= httpResponse.statusCode else {
            throw URLError(.badServerResponse)
        }
        let decodedData = try JSONDecoder().decode(T.self, from: data)
        print("response \(String(data: data, encoding: .utf8) ?? "")")
        return decodedData
    }
}
