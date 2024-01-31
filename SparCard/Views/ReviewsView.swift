//
//  ReviewsView.swift
//  SparCard
//
//  Created by Anton on 31.01.24.
//

import SwiftUI

struct ReviewsView: View {
    
    @State var reviewsCount = 152
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Отзывы")
                    .font(.system(size: 18, weight: .semibold))
                
                Spacer()
                
                Button(action: {
                    print("All reviews")
                }, label: {
                    Text("Все \(reviewsCount)")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.green)
                })
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 5) {
                    ForEach(0..<10) { _ in
                        reviewsCardView
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                }
            }
            
            Button {
                print("Review")
            } label: {
                Text("Оставить отзыв")
                    .frame(maxWidth: .infinity)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.green)
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.green, lineWidth: 2)
                    )
            }
            .padding(.horizontal)
        }
    }
    
    var reviewsCardView: some View {
        ZStack(alignment: .topLeading) {
            Color.white
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .gray.opacity(0.7), radius: 5)
            
            VStack(alignment: .leading ,spacing: 5) {
                Text("Александр В.")
                    .font(.system(size: 18, weight: .bold))
                
                Text("7 мая")
                
                HStack {
                    ForEach(0..<5) { index in
                        Image(systemName: index < 4 ? "star.fill" : "star")
                            .foregroundColor(index < 4 ? .yellow : .gray)
                    }
                }
                
                Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими.")
                    .multilineTextAlignment(.leading)
                
                
            }
            .padding()
            .fixedSize(horizontal: false, vertical: true)
            
        }
        .frame(width: 280, height: 180)
    }
}

#Preview {
    ReviewsView()
}
