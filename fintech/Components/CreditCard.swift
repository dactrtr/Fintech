//
//  CreditCard.swift
//  fintech
//
//  Created by Sebastian Zuniga on 20-06-21.
//

import SwiftUI

struct CreditCard: View {
  var body: some View {
    ZStack {
      VStack(alignment: .leading ) {
        HStack(alignment:.top) {
          Color.white
            .mask(Image("visa")
                    .resizable()
                    .scaledToFit()
            )
            .frame(width: 48, height:32)
            .padding(.bottom,16)
          Spacer()
          VStack(spacing: 4){
            Capsule(style: .circular)
              .frame(width: 24, height: 6)
            HStack (spacing: 4){
              Capsule(style: .circular)
                .frame(width: 24, height: 6)
              Circle()
                .frame(width: 6, height: 6)
            }
          }
          .foregroundColor(.white.opacity(0.6))
          .rotationEffect(Angle(degrees: -40))
        }
        Text("**** **** **** 7745")
          .font(.system(size: 16, weight: .semibold, design: .monospaced))
          .foregroundColor(.white)
          .padding(.bottom, 16)
          .offset(y:-10)
        HStack {
          Text("05/22")
            .font(.system(size: 16, weight: .semibold, design: .monospaced))
            .foregroundColor(.white)
          Spacer()
          //MARK: BUTTON
          Text("Show CCV")
            .font(.system(size: 12, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .padding(.vertical,12)
            .padding(.horizontal)
            .cardBackground(with: 8)
        }
      }
      .padding(.vertical,24)
      .padding(.horizontal,16)
    }
    .background(
      ZStack {
        HStack{
          Circle()
            .foregroundColor(Color(#colorLiteral(red: 0.3824964762, green: 0.3925487399, blue: 0.9833368659, alpha: 1)).opacity(0.7))
            .offset(x:-40,y:80)
          Circle()
            .foregroundColor(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)).opacity(0.7))
            .offset(x:0,y:-60)
        }
        VisualEffectBlur(blurStyle:.systemThinMaterialLight)
        RoundedRectangle(cornerRadius: 16, style: .continuous)
          .stroke(Color.white.opacity(0.06), lineWidth: 2)
      }
    )
    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
  }
}

struct CreditCard_Previews: PreviewProvider {
    static var previews: some View {
        CreditCard()
    }
}
