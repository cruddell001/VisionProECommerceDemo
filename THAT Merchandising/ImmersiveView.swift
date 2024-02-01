//
//  ImmersiveView.swift
//  THAT Merchandising
//
//  Created by Chris Ruddell on 1/31/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct MugView: View {
    var body: some View {
        RealityView { content in
            // Add the initial RealityKit content
            if let scene = try? await Entity(named: "Mug", in: realityKitContentBundle) {
                content.add(scene)
            }
        }
    }
}

struct HatView: View {
  var body: some View {
    RealityView { content in
      // Add the initial RealityKit content
      if let scene = try? await Entity(named: "Hat", in: realityKitContentBundle) {
        content.add(scene)
      }
    }
  }
}

