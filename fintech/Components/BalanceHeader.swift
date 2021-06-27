//
//  BalanceHeader.swift
//  fintech
//
//  Created by Sebastian Zuniga on 20-06-21.
//

import SwiftUI

struct BalanceHeader: View {
  var body: some View {
    Group{
      HStack{
        Text("Balance")
          .font(.system(size: 16, weight: .bold, design: .rounded))
          .foregroundColor(.white)
          .opacity(0.4)
        Spacer()
        Text("See more")
          .font(.system(size: 12, weight: .bold, design: .rounded))
          .foregroundColor(.white)
          .padding(.vertical,6)
          .padding(.horizontal)
          .background(Color(#colorLiteral(red: 0.2879821956, green: 0.5874122977, blue: 0.9898821712, alpha: 1)).clipShape(
            RoundedRectangle(cornerRadius: 8, style: .continuous)
          ))
      }
      HStack{
        Image(systemName: "dollarsign.circle.fill")
          .foregroundColor(.yellow)
          .font(.title)
          .background(Color.white.clipShape(Circle()).frame(width:24,height: 24))
        Text("6,421.23")
          .foregroundColor(.white)
          .font(.system(size: 24, weight: .bold, design: .rounded))
        Spacer()
      }
      .padding(.bottom,8)
    }
  }
}

struct BalanceHeader_Previews: PreviewProvider {
    static var previews: some View {
        BalanceHeader()
    }
}
