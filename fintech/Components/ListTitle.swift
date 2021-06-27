//
//  ListTitle.swift
//  fintech
//
//  Created by Sebastian Zuniga on 20-06-21.
//

import SwiftUI

struct ListTitle: View {
  var body: some View {
    HStack {
      Text("23 March")
        .font(.system(size: 12, weight: .bold, design: .rounded))
        .foregroundColor(.white)
      Spacer()
      Text("-$ 813")
        .font(.system(size: 12, weight: .bold, design: .rounded))
        .foregroundColor(.white)
    }
    .opacity(0.3)
    .padding(.bottom,8)
  }
}

struct ListTitle_Previews: PreviewProvider {
    static var previews: some View {
        ListTitle()
    }
}
