//
//  MenuIcon.swift
//  fintech
//
//  Created by Sebastian Zuniga on 26-06-21.
//

import SwiftUI

struct MenuIcon: View {
  var icon : String
  var menu : String
  var body: some View {
    VStack(spacing: 8){
      Image(systemName: icon)
        .font(.system(size: 18))
        .frame(width:48,height:48)
      Text(menu)
        .font(.system(size: 10, weight: .black, design: .rounded))
    }
    .foregroundColor(.white)
  }
}

