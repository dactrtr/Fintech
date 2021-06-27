//
//  BottomBar.swift
//  fintech
//
//  Created by Sebastian Zuniga on 26-06-21.
//

import SwiftUI

struct BottomBar: View {
  var body: some View {
    ZStack{
      HStack{
        MenuIcon(icon: "rectangle.3.offgrid.fill", menu: "Dashboard")
        MenuIcon(icon: "square.stack.3d.up.fill", menu: "Portfolio")
          .opacity(0.3)
        Spacer()
        MenuIcon(icon: "chart.bar.fill", menu: "Prices")
          .opacity(0.3)
        MenuIcon(icon: "bell.fill", menu: "Notifications")
          .opacity(0.3)
      }
      .offset(y:8)
      PlusButton()
    }
  }
}

struct BottomBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomBar()
    }
}
