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
    static let store = Store(initialState: AppFeature.State()) {
        AppFeature()
    }
    
    var body: some Scene {
        WindowGroup {
            AppView(store: TCA_TestApp.store)
        }
    }
}
