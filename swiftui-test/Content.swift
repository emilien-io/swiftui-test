//
//  Content.swift
//  swiftui-test
//
//  Created by emilien on 15/06/2022.
//

import SwiftUI

struct Content: View {
    
    var body: some View {
        VStack {
            Card()
            Mirror().frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        Content().environmentObject(Entry(text: "This is an example"))
    }
}
