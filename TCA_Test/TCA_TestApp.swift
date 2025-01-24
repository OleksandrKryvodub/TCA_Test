//
//  TCA_TestApp.swift
//  TCA_Test
//
//  Created by Alexander Sharko on 24.01.2025.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCA_TestApp: App {
    var body: some Scene {
        WindowGroup {
            CounterView(
                store: Store(initialState: CounterFeature.State()) {
                    CounterFeature()
                        ._printChanges()
                }
            )
        }
    }
}
