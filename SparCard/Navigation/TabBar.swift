//
//  TabBar.swift
//  SparCard
//
//  Created by Anton on 31.01.24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        NavigationView {
            TabView {
                ProductCard()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Главная")
                    }
                Text("Каталог")
                    .tabItem {
                        Image(systemName: "square.text.square.fill")
                        Text("Каталог")
                    }
                Text("Корзина")
                    .tabItem {
                        Image(systemName: "basket")
                        Text("Корзина")
                    }
                Text("Профиль")
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Профиль")
                    }
            }
            .accentColor(.green)
            .navigationBarItems(
                leading:
                    Button(action: {
                        print("Back button tapped")
                    }) {
                        Image(systemName: "arrow.backward")
                            .foregroundColor(.green)
                            .font(.system(size: 16, weight: .bold))
                    },
                trailing:
                    HStack {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "list.clipboard")
                                .foregroundColor(.green)
                                .font(.system(size: 16, weight: .bold))
                        }
                        Button(action: {
                            
                        }) {
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(.green)
                                .font(.system(size: 16, weight: .bold))
                        }
                        Button(action: {
                            
                        }) {
                            Image(systemName: "heart")
                                .foregroundColor(.green)
                                .font(.system(size: 16, weight: .bold))
                        }
                    }
            )
        }
    }
}

#Preview {
    TabBar()
}
