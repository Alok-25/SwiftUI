//
//  DummyLoginApp.swift
//  DummyLogin
//
//  Created by Inito on 26/08/23.
//

import SwiftUI

@main
struct DummyLoginApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(UserData())
        }
    }
}
