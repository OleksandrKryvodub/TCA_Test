//
//  AppFeatureTests.swift
//  TCA_TestTests
//
//  Created by Alexander Sharko on 24.01.2025.
//

import Testing
import ComposableArchitecture

@testable import TCA_Test

@MainActor
struct AppFeatureTests {
    @Test func incrementInFirstTab() async {
        let store = TestStore(initialState: AppFeature.State()) {
            AppFeature()
        }
                          
        await store.send(\.tab1.incrementButtonTapped) {
            $0.tab1.count = 1
        }
    }
}
