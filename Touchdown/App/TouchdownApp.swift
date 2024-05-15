//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Hein Htet Aung on 2024/05/14.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(Shop())
        }
    }
}
