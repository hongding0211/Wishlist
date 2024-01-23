//
//  ContentView.swift
//  Wishlist
//
//  Created by hong on 2024/1/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    var body: some View {
        TabView {
            Text("Home")
                .tabItem { Label("Wishlist", systemImage: "list.bullet.circle.fill") }
            
            User()
                .tabItem { Label("User", systemImage: "person.circle.fill") }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
        .environment(\.locale, .init(identifier: "zh-Hans"))
}
