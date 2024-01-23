//
//  Login.swift
//  Wishlist
//
//  Created by hong on 2024/1/23.
//

import SwiftUI

struct Login: View {
    @ObservedObject var web = WebviewModel(url: SsoUrl.loginPage)
    
    var body: some View {
        WebView(webview: web.webview)
    }
}

#Preview {
    Login()
}
