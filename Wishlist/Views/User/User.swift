//
//  My.swift
//  Wishlist
//
//  Created by Hong on 2024/1/23.
//

import SwiftUI

struct User: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    HStack {
                        Text("User name")
                    }
                    Text("Edit profile")
                }
                
                Section {
                    Text("Log out")
                        .foregroundStyle(.red)
                }
            }
            .contentMargins(12)
            .navigationTitle("User")
        }
    }
}

#Preview {
    User()
}
