//
//  blurryBackground.swift
//  fintech
//
//  Created by Sebastian Zuniga on 26-06-21.
//

import SwiftUI

// MARK: CUSTOM BG MODIFIER
struct blurryBackground: ViewModifier{
  var cornerRadius : CGFloat
  func body(content: Content) -> some View{
    content
      .background(
        ZStack {
          VisualEffectBlur(blurStyle: .systemUltraThinMaterialDark)
          RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
            .stroke(Color.white.opacity(0.06), lineWidth: 2)
        }
      )
      .clipShape(RoundedRectangle(cornerRadius:cornerRadius, style: .continuous))
  }
}
// MARK: MODIFIER EXTENSION
extension View {
  func cardBackground(with corner:CGFloat) -> some View{
    self.modifier(blurryBackground(cornerRadius: corner))
  }
}
