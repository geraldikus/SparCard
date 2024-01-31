//
//  PriceView.swift
//  SparCard
//
//  Created by Anton on 31.01.24.
//

import SwiftUI

struct PriceView: View {
    
    @ObservedObject var viewModel = PriceViewModel()

    var body: some View {
        VStack(spacing: 10) {
            Picker(selection: $viewModel.unitSelection, label: Text("")) {
                Text("Шт").tag(0)
                Text("Кг").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("55.9")
                            .font(.system(size: 36, weight: .heavy))
                        Text("₽/кг")
                    }
                    Text("100,0")
                        .foregroundColor(.gray)
                        .strikethrough()
                }
                
                Spacer()
                
                priceButtonView
            }
            .padding(.horizontal)
        }
    }
    
    var priceButtonView: some View {
        ZStack(alignment: .center, content: {
            Color.green
                .clipShape(RoundedRectangle(cornerRadius: 40))
            
            HStack {
                Button(action: {
                    if self.viewModel.count > 0 {
                        self.viewModel.count -= 1
                        self.viewModel.price = Double(self.viewModel.count) * 120.0
                    }
                }, label: {
                    Text("-")
                        .font(.system(size: 45, weight: .light))
                        .foregroundColor(.white)
                })
                .padding(.trailing)
                
                VStack(alignment: .center) {
                    Text("\(viewModel.count) \(viewModel.unitSelection == 0 ? viewModel.forOne : viewModel.forKg)")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .bold))
                    
                    Text(String(format: "%.1f", viewModel.price) + "₽")
                        .foregroundColor(.white.opacity(0.5))
                        .font(.system(size: 15))
                }
                
                Button(action: {
                    viewModel.count += 1
                    self.viewModel.price = Double(self.viewModel.count) * 120.0
                }, label: {
                    Text("+")
                        .font(.system(size: 45, weight: .light))
                        .foregroundColor(.white)
                })
                .padding(.leading)
                .padding(.bottom, 5)
                
            }
            
        })
        .frame(width: 180, height: 50)
    }
}



#Preview {
    PriceView()
}
