//
//  PlusButton.swift
//  fintech
//
//  Created by Sebastian Zuniga on 26-06-21.
//

import SwiftUI

struct PlusButton: View {
  var body: some View {
    Image(systemName: "plus")
      .font(.system(size: 16, weight: .bold, design: .rounded))
      .padding()
      .foregroundColor(.white)
      .background(Color(#colorLiteral(red: 0.2900567651, green: 0.5833873153, blue: 0.9858968854, alpha: 1)))
      .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
      .offset(y:-8)
  }
}

struct PlusButton_Previews: PreviewProvider {
    static var previews: some View {
        PlusButton()
    }
}
