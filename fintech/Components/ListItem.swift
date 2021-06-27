//
//  ListItem.swift
//  fintech
//
//  Created by Sebastian Zuniga on 20-06-21.
//

import SwiftUI

struct ListItem: View {
  var body: some View {
    HStack{
      Image(systemName: "creditcard")
        .padding(8)
        .font(.caption)
        .foregroundColor(.white)
        .frame(width: 40, height: 40)
        .background(Color.black
                      .opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
      VStack(alignment: .leading, spacing: 8){
        HStack {
          Text("ATM, 375 Canal St")
          Spacer()
          Text("-$ 300")
        }
        .font(.system(size: 14, weight: .bold, design: .rounded))
        Text("Cash withdrawal")
          .font(.system(size: 12, weight: .semibold, design: .rounded))
          .opacity(0.4)
      }
      .foregroundColor(.white)
    }
  }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem()
    }
}
