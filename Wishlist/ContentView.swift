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
            UserCard(user: User(name: "Hong", avatar: "https://ltd-hong97-imgs.oss-cn-shanghai.aliyuncs.com/sso/202309/IMG_0031_ln3du871.jpeg", sex: .male, birth: 1707220842), itemCount: 3)
                .tabItem { Label("Wishlist", systemImage: "list.bullet.circle.fill") }
            
            UserView()
                .tabItem { Label("User", systemImage: "person.circle.fill") }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
        .environment(\.locale, .init(identifier: "zh-Hans"))
}
