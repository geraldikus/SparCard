//
//  TableDescription.swift
//  SparCard
//
//  Created by Anton on 31.01.24.
//

import SwiftUI

struct HorizontalTable: View {
    let name: String
    let value: String
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Text(name)
                .multilineTextAlignment(.leading)
            
            DottedSpacer(color: .gray, lineWidth: 2)
            
            Text(value)
                .multilineTextAlignment(.trailing)
        }
    }
}

#Preview {
    HorizontalTable(name: "Hello", value: "Hello world")
}
