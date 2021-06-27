//
//  MiniCard.swift
//  fintech
//
//  Created by Sebastian Zuniga on 20-06-21.
//

import SwiftUI

struct MiniCard: View {
  var title : String
  var percent : String
  var month : String
  var body: some View {
    HStack {
      VStack(alignment:.leading,spacing: 0){
        Group {
          HStack {
            Text(title)
              .font(.system(size: 14, weight: .semibold, design: .rounded))
              .opacity(0.4)
            Spacer()
            Image("minichart")
          }
          .padding(.bottom, 4)
          Text("\(percent)%")
            .font(.system(size: 18, weight: .heavy, design: .rounded))
            .padding(.bottom,8)
          Text(month)
            .font(.system(size: 12, weight: .bold, design: .rounded))
            .opacity(0.8)
            .padding(.bottom, 8)
        }
        .foregroundColor(.white)
        HStack(spacing: 0){
          Image(systemName: "bitcoinsign.circle.fill")
            .foregroundColor(.red)
            .background(Color.white.clipShape(Circle()).frame(width:22,height: 22))
          Image(systemName: "bitcoinsign.circle.fill")
            .foregroundColor(.yellow)
            .background(Color.white.clipShape(Circle()).frame(width:22,height: 22))
            .offset(x:-14)
          Text("+3")
            .font(.system(size: 12, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .background(Color.blue.clipShape(Circle()).frame(width:24,height: 24))
            .offset(x:-20)
        }
        .font(.title2)
      }
      Spacer()
    }
    .frame(width: 120)
    .padding()
    .cardBackground(with: 24)
    .shadow(color: .black.opacity(0.3), radius: 8, x: 0, y: 8)
  }
}

struct MiniCard_Previews: PreviewProvider {
    static var previews: some View {
      MiniCard(title: "title", percent: "90", month: "AUG")
    }
}
