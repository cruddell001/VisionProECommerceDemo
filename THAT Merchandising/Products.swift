//
//  Products.swift
//  THAT Merchandising
//
//  Created by Chris Ruddell on 1/31/24.
//

import Foundation

enum Products {
  case Hat, Mug, None
}

extension Products {
  func urlString() -> String {
    switch self {
      case .Hat:
        return "https://that-merchandise.mybigcommerce.com/that-hat/"
      case .Mug:
        return "https://that-merchandise.mybigcommerce.com/that-mug/"
      case .None:
        return "https://that-merchandise.mybigcommerce.com/"
    }
  }
}
