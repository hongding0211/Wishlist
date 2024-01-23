import SwiftUI
import WebKit

struct WebView:UIViewRepresentable{
    let webview:WKWebView
    func makeUIView(context: Context) -> WKWebView {
        return webview
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

class WebviewModel:ObservableObject{
    let webview:WKWebView
    
    init(url: String) {
        self.webview = WKWebView(frame: .zero)
        let _url = URL(string: url)!
        webview.load(URLRequest(url: _url))
    }
}
