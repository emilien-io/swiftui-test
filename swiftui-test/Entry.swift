//
//  Entry.swift
//  swiftui-test
//
//  Created by emilien on 15/06/2022.
//

import Foundation

class Entry: ObservableObject {
    @Published var value: String
    
    init(text: String) {
        value = text
    }
}
