//
//  MainImageVIew.swift
//  SparCard
//
//  Created by Anton on 31.01.24.
//

import SwiftUI

struct MainImageView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Button {
                print("Main image pressed")
            } label: {
                Image("lipa")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 330, height: 220)
                    .padding(.top, 50)
            }
            Text("Цена по карте")
                .padding(.horizontal, 8)
                .padding(.vertical, 5)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(5)
        }
        .padding(.trailing, 20)
    }
}

#Preview {
    MainImageView()
}
