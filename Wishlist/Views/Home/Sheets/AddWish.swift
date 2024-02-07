//
//  AddWish.swift
//  Wishlist
//
//  Created by hong on 2024/2/7.
//

import SwiftUI

struct AddWish: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button("Close") {
            dismiss()
        }
    }
}

#Preview {
    AddWish()
}
