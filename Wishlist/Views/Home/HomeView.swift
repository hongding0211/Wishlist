//
//  HomeView.swift
//  Wishlist
//
//  Created by hong on 2024/2/7.
//

import SwiftUI

struct HomeView: View {
    @State private var showAddSheet = false
    
    var body: some View {
        NavigationStack {
            UserCardList()
                .contentMargins(12)
                .navigationTitle("Wishlist")
                .toolbar {
                    Button {
                        showAddSheet = true
                    } label: {
                        Label("Add", systemImage: "square.and.pencil")
                    }
                }
                .sheet(isPresented: $showAddSheet) {
                    AddWish()
                }
        }
    }
}

#Preview {
    HomeView()
}
