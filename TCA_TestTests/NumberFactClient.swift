//
//  NumberFactClient.swift
//  TCA_Test
//
//  Created by Alexander Sharko on 24.01.2025.
//

import Foundation
import ComposableArchitecture

struct NumberFactClient {
    var fetch: (Int) async throws -> String
}

extension NumberFactClient: DependencyKey {
    static let liveValue = Self(
        fetch: { count in
            let (data, _) = try await URLSession.shared.data(from: URL(string: "http://numbersapi.com/\(count)")!)
            let fact = String(decoding: data, as: UTF8.self)
            return fact
        }
    )
    
    static let testValue = Self(fetch: { "\($0) is a good number." })
}

extension DependencyValues {
    var numberFact: NumberFactClient {
        get { self[NumberFactClient.self] }
        set { self[NumberFactClient.self] = newValue }
    }
}
