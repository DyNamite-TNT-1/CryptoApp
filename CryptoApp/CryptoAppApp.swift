//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by hanbiro - ANHDUC on 10/17/23.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
