//
//  HeroCard.swift
//  fintech
//
//  Created by Sebastian Zuniga on 20-06-21.
//

import SwiftUI

struct HeroCard: View {
  var body: some View {
    ZStack{
      Image("chart")
        .offset(x:80,y:20)
      HStack {
        VStack(alignment: .leading) {
          Text("Monitor your expenses")
            .font(.system(size: 24, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .padding(.bottom,32)
          Text("Get")
            .font(.system(size: 16, weight: .semibold, design: .rounded))
            .foregroundColor(.white)
            .padding(.vertical,4)
            .padding(.horizontal)
            .background(Color(#colorLiteral(red: 0.2879821956, green: 0.5874122977, blue: 0.9898821712, alpha: 1)).clipShape(
              RoundedRectangle(cornerRadius: 8, style: .continuous)
            ))
        }
        .frame(width: 180)
        .padding(.leading,8)
        Spacer()
      }
      
    }
    .frame(height: 160)
    .cardBackground(with: 24)
    .shadow(color: .black.opacity(0.3), radius: 8, x: 0, y: 8)
    
  }
}

struct HeroCard_Previews: PreviewProvider {
    static var previews: some View {
        HeroCard()
    }
}
