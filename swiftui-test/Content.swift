//
//  Content.swift
//  swiftui-test
//
//  Created by emilien on 15/06/2022.
//

import SwiftUI

struct Content: View {
    private var entry = Entry(text: "")
    
    var body: some View {
        VStack {
            Card(entry: entry)
            Mirror(entry: entry).frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        Content()
    }
}
