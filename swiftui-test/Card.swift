//
//  Card.swift
//  swiftui-test
//
//  Created by emilien on 15/06/2022.
//

import SwiftUI

struct Card: View {
    @EnvironmentObject var entry: Entry
    
    var body: some View {
        VStack {
            Text("Two way binding example".uppercased())
                .bold()
                .padding()
            TextField("Try to type something here!", text: $entry.value)
                .font(.caption)
                .lineLimit(3)
                .multilineTextAlignment(.center)
                .padding()
        }
        .background(.black.opacity(0.05))
        .cornerRadius(20)
        .padding()
    }
}


struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card().environmentObject(Entry(text: ""))
    }
}
