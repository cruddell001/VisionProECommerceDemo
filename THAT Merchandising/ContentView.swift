//
//  ContentView.swift
//  THAT Merchandising
//
//  Created by Chris Ruddell on 1/31/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @ObservedObject var viewModel: ViewModel

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace

    var body: some View {
      NavigationSplitView {
        List {
          Text("Home")
            .onTapGesture {
              print("Tapped home")
              viewModel.showProduct(product: .None)
            }
          Text("Hat")
            .onTapGesture {
              print("Tapped Hat")
              viewModel.showProduct(product: .Hat)
            }
          Text("Mug")
            .onTapGesture {
              print("Tapped Mug")
              viewModel.showProduct(product: .Mug)
            }
        }
      } detail: {
        WebView(viewModel: viewModel)
      }
        .padding()
        .onChange(of: viewModel.productLoaded) { oldValue, newValue in
          Task {
            print("product loaded changed from \(oldValue) to \(newValue)")
            switch oldValue {
              case .Hat, .Mug:
                await dismissImmersiveSpace()
              case .None:
                print("doing nothing")
            }
            switch newValue {
              case .None:
                print("Not showing anything")
              case .Hat:
                await openImmersiveSpace(id: "MyThatHat")
              case .Mug:
                await openImmersiveSpace(id:"MyThatMug")
            }
            
            
          }
        }
        
    }
}

