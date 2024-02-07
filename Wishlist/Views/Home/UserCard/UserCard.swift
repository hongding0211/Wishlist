//
//  Card.swift
//  Wishlist
//
//  Created by hong on 2024/2/6.
//

import SwiftUI

struct UserCard: View {
    @Environment(\.colorScheme) var colorScheme
    
    let WIDTH = 48
    
    let user: User
    let itemCount: Int
    
    var body: some View {
        HStack() {
            AsyncImage(url: user.getAvatarUrl(width: WIDTH)) { img in
                img.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: CGFloat(WIDTH), height: CGFloat(WIDTH))
                    .clipShape(Circle())
            } placeholder: {
                ZStack {
                    Circle()
                        .fill(Color(UIColor.systemGray5))
                    Image(systemName: "person.fill").foregroundColor(Color(UIColor.gray))
                }
                .frame(width: CGFloat(WIDTH), height: CGFloat(WIDTH))
            }
            VStack(alignment: .leading) {
                Text(user.name)
                    .font(.title3)
                    .fontWeight(.medium)
                Text("\(itemCount) items on the list", comment: "x items on the list")
                    .font(.footnote)
                    .foregroundColor(Color(UIColor.secondaryLabel))
            }
            .padding(.leading, 12)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding(20)
        .background(Color(UIColor.systemBackground))
        .cornerRadius(16.0)
        .shadow(color: Color.gray.opacity(0.2), radius: 12, x: 0, y: 0)
    }
}

#Preview {
    UserCard(user: User(name: "Hong", avatar: "https://ltd-hong97-imgs.oss-cn-shanghai.aliyuncs.com/sso/202309/IMG_0031_ln3du871.jpeg", sex: .male, birth: 1707220842), itemCount: 3)
}

