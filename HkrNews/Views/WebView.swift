//
//  WebView.swift
//  HkrNews
//
//  Created by Shivaansh Prasann on 2020-03-25.
//  Copyright © 2020 ShivStuff. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeURLString = urlString{
            if let url = URL(string: safeURLString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
