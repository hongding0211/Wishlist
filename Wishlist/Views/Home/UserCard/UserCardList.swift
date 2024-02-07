//
//  UserCardList.swift
//  Wishlist
//
//  Created by hong on 2024/2/7.
//

import SwiftUI

struct UserCardList: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack(spacing: 16) {
                ForEach(0..<20) { _ in
                    UserCard(user: User(name: "Hong", avatar: "https://ltd-hong97-imgs.oss-cn-shanghai.aliyuncs.com/sso/202309/IMG_0031_ln3du871.jpeg", sex: .male, birth: 1707220842), itemCount: 3)
                }
            }
        }
    }
}

#Preview {
    UserCardList()
}