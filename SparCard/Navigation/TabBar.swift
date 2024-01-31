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
                    },
                trailing:
                    HStack {
                        Button(action: {
                            // действие при нажатии на первую кнопку справа
                        }) {
                            Image(systemName: "list.clipboard")
                                .foregroundColor(.green)
                        }
                        Button(action: {
                            // действие при нажатии на вторую кнопку справа
                        }) {
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(.green)
                        }
                        Button(action: {
                            // действие при нажатии на третью кнопку справа
                        }) {
                            Image(systemName: "heart")
                                .foregroundColor(.green)
                        }
                    }
            )
        }
    }
}

#Preview {
    TabBar()
}
