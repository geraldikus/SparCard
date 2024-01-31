//
//  Stars.swift
//  SparCard
//
//  Created by Anton on 31.01.24.
//

import SwiftUI

struct StarsView: View {
    
    @State var rating = 4.1
    @State var reviews = 19
    @State var discount = 5
    
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Text(String(format: "%.1f", rating))
            Text("| \(reviews) отзывов")
                .foregroundColor(.gray)
            
            Spacer()
            
            Text("-\(discount)%")
                .padding(.horizontal, 5)
                .padding(.vertical, 3)
                .background(Color.pink)
                .cornerRadius(5)
                .foregroundColor(.white)
        }
        .padding(.horizontal)
    }
}

#Preview {
    StarsView()
}
