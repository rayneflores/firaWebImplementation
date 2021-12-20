//
//  WebView.swift
//  FiraWebImplementation
//
//  Created by Miguel Rincon on 12/16/21.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webViewConfiguration  = WKWebViewConfiguration()
        webViewConfiguration.allowsInlineMediaPlayback = true
        webViewConfiguration.mediaTypesRequiringUserActionForPlayback = .audio
        webViewConfiguration.allowsAirPlayForMediaPlayback = false
        webViewConfiguration.preferences.javaScriptCanOpenWindowsAutomatically = true
        webViewConfiguration.defaultWebpagePreferences.allowsContentJavaScript = true
        
        let webView = WKWebView(frame: .zero, configuration: webViewConfiguration)
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        webView.underPageBackgroundColor = UIColor.white
        webView.load(URLRequest(url: url))
    }
    
}
