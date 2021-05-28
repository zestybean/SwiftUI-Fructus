//
//  FructusApp.swift
//  Shared
//
//  Created by Brando Lugo on 5/25/21.
//

import SwiftUI

@main //MARK: - New to SwiftUI
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
