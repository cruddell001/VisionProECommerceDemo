//
//  WebView.swift
//  THAT Merchandising
//
//  Created by Chris Ruddell on 1/31/24.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
  @ObservedObject var viewModel: ViewModel
  @State private var loadedPage: Products = .None
  
  // Coordinator to handle WebView navigation
  class Coordinator: NSObject, WKNavigationDelegate {
    var parent: WebView
    
    init(_ parent: WebView) {
      self.parent = parent
    }
    
    // Delegate method when a webpage has finished loading
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
      print("Webpage loaded successfully: \(webView.url?.absoluteString ?? "")")
      let urlString = webView.url?.absoluteString ?? ""
      if (urlString.contains("that-hat")) {
        parent.loadedPage = .Hat
        ViewModel.shared.showProduct(product: .Hat)
      } else if urlString.contains("that-mug") {
        parent.loadedPage = .Mug
        ViewModel.shared.showProduct(product: .Mug)
      } else {
        parent.loadedPage = .None
        ViewModel.shared.showProduct(product: .None)
      }
      // Add more actions here if needed
    }
  }
  
  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }
  
  func makeUIView(context: Context) -> WKWebView {
    guard let url = URL(string: loadedPage.urlString()) else {
      return WKWebView() // Return an empty WKWebView if URL initialization fails
    }
    let request = URLRequest(url: url)
    let webView = WKWebView()
    webView.navigationDelegate = context.coordinator // Set the coordinator as the delegate
    webView.load(request)
    return webView
  }
  
  func updateUIView(_ uiView: WKWebView, context: Context) {
    let oldProduct = loadedPage
    let newProduct = viewModel.productLoaded
    
    print("updateWebView(\(oldProduct),\(newProduct)): \(oldProduct.urlString()): \(newProduct.urlString())")
    guard oldProduct != newProduct else { return print("not updating webview because currently on: \(uiView.url?.absoluteString ?? "nil")") }
    
    if let url = URL(string: newProduct.urlString()) {
      print("loading \(newProduct.urlString())")
      uiView.load(URLRequest(url: url))
    }
  }
}
