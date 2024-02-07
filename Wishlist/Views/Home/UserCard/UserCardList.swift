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
                ForEach(0..<10) { _ in
                    let user = User(name: "Hong", avatar: "https://ltd-hong97-imgs.oss-cn-shanghai.aliyuncs.com/sso/202309/IMG_0031_ln3du871.jpeg", sex: .male, birth: 1707220842)
                    NavigationLink(destination: UserDetail(user: user)) {
                        UserCard(user: user, itemCount: 3)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
    }
}

#Preview {
    UserCardList()
}
