//
//  THAT_MerchandisingApp.swift
//  THAT Merchandising
//
//  Created by Chris Ruddell on 1/31/24.
//

import SwiftUI

@main
struct THAT_MerchandisingApp: App {
  
    var body: some Scene {
        WindowGroup {
          ContentView(viewModel: ViewModel.shared)
        }

        ImmersiveSpace(id: "MyThatMug") {
            MugView()
        }
      
        ImmersiveSpace(id: "MyThatHat") {
          HatView()
        }
    }
}
