//
//  ViewModel.swift
//  THAT Merchandising
//
//  Created by Chris Ruddell on 1/31/24.
//

import Foundation

class ViewModel: ObservableObject {
  static let shared = ViewModel()
  private init() {}
  
  @Published var productLoaded: Products = .None
  
  /**
   Show the 3D model for the provided product
   This should be triggered when the WebView has loaded the product page
   */
  func showProduct(product: Products) {
    print("showProduct(\(product))")
    guard productLoaded != product else { return print("not showing product because \(productLoaded) already set to \(product)") }
    productLoaded = product
  }
  
  
}
