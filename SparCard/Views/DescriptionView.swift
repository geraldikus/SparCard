//
//  DescriptionView.swift
//  SparCard
//
//  Created by Anton on 31.01.24.
//

import SwiftUI

struct DescriptionView: View {
    
    @State var country = "Испания, Риоха"
    @State var description = "Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Text("Добавка \"Липа\" к чаю 200 г")
                .fontWeight(.bold)
                .font(.system(size: 35))
            
            HStack {
                Image(systemName: "globe.americas.fill")
                    .foregroundColor(.orange)
                    .font(.system(size: 30))
                Text(country)
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Описание")
                    .font(.system(size: 20, weight: .semibold))
                Text(description)
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Основные характеристики")
                    .font(.system(size: 20, weight: .semibold))
                HorizontalTable(name: "Производство", value: "Россия, Кранодарский край")
                HorizontalTable(name: "Энергетическая ценность, ккал/100г", value: "25 ккал, 105 кДж")
                HorizontalTable(name: "Жиры/100г", value: "0,1 г")
                HorizontalTable(name: "Белки/100г", value: "1,3 г")
                HorizontalTable(name: "Углеводы/100г", value: "3,3 г")
            }
            
            Button(action: {
                print("Все характеристики")
            }, label: {
                Text("Все характеристики")
                    .foregroundColor(.green)
                    .font(.system(size: 18, weight: .bold))
            })
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    DescriptionView()
}
