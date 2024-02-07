//
//  UserDetail.swift
//  Wishlist
//
//  Created by hong on 2024/2/7.
//

import SwiftUI

struct UserDetail: View {
    let user: User
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .navigationTitle(user.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    UserDetail(user: User(name: "Hong", avatar: "https://ltd-hong97-imgs.oss-cn-shanghai.aliyuncs.com/sso/202309/IMG_0031_ln3du871.jpeg", sex: .male, birth: 1707220842))
}
