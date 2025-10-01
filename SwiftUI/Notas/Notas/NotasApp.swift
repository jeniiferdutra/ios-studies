//
//  NotasApp.swift
//  Notas
//
//  Created by Jenifer Rocha on 11/09/25.
//

import SwiftUI

@main // parte inicial do app
struct NotasApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
