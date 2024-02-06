//
//  Card.swift
//  Wishlist
//
//  Created by hong on 2024/2/6.
//

import SwiftUI

struct UserCard: View {
    let WIDTH = 64
    
    let user: User
    let itemCount: Int
    
    var body: some View {
        HStack() {
            AsyncImage(url: URL(string: getOptimizedOssImageUrl(url: user.avatar, width: WIDTH))) { img in
                img.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: CGFloat(WIDTH), height: CGFloat(WIDTH))
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading) {
                Text(user.name)
                    .font(.title3)
                    .fontWeight(.medium)
                Text("\(itemCount) items on the list", comment: "x items on the list")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .padding(.leading, 12)
        }
        .frame(maxWidth: .infinity)
        .padding(20)
    }
}

#Preview {
    UserCard(user: User(name: "Hong", avatar: "https://ltd-hong97-imgs.oss-cn-shanghai.aliyuncs.com/sso/202309/IMG_0031_ln3du871.jpeg", sex: .male, birth: 1707220842), itemCount: 3)
}

