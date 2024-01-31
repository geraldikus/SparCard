//
//  ContentView.swift
//  SparCard
//
//  Created by Anton on 31.01.24.
//

import SwiftUI

struct ProductCard: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Divider()
                MainImageView()
                StarsView()
                    .padding(.top, 30)
                DescriptionView()
            }
        }
    }
}


#Preview {
    ProductCard()
}
