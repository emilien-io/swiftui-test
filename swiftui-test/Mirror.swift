//
//  Mirror.swift
//  swiftui-test
//
//  Created by emilien on 15/06/2022.
//

import SwiftUI

struct Mirror: View {
    @ObservedObject var entry: Entry
    
    var body: some View {
        Text(entry.value)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .font(.caption)
            .multilineTextAlignment(.center)
            .background(.black.opacity(0.05))
            .cornerRadius(20)
            .padding()
    }
}


struct Mirror_Previews: PreviewProvider {
    static var previews: some View {
        Mirror(entry: Entry(text: "This is an example."))
    }
}
