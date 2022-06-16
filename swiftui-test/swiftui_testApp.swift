//
//  swiftui_testApp.swift
//  swiftui-test
//
//  Created by emilien on 15/06/2022.
//

import SwiftUI

@main
struct swiftui_testApp: App {
    @StateObject private var entry = Entry(text: "")
    
    var body: some Scene {
        WindowGroup {
            Content().environmentObject(entry)
        }
    }
}
