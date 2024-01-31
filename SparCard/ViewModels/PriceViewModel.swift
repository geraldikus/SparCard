//
//  PriceViewModel.swift
//  SparCard
//
//  Created by Anton on 31.01.24.
//

import SwiftUI

class PriceViewModel: ObservableObject {
    @Published var unitSelection: Int = 0 // 0 для "Шт", 1 для "Кг"
    
    @Published var count = 1
    @Published var price: Double = 120.0
    
    @Published var forOne = "шт"
    @Published var forKg = "кг"
}
