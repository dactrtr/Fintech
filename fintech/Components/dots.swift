//
//  dots.swift
//  fintech
//
//  Created by Sebastian Zuniga on 26-06-21.
//

import SwiftUI

struct dots: View {
  var body: some View {
    HStack(alignment:.center, spacing:8){
      Spacer()
      Circle()
        .frame(width:5)
      Circle()
        .frame(width:4)
        .opacity(0.3)
      Circle()
        .frame(width:4)
        .opacity(0.3)
      Spacer()
    }
    .frame(height:8)
    .foregroundColor(.white)
    .padding(.top,8)
  }
}
