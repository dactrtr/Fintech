//
//  Header.swift
//  fintech
//
//  Created by Sebastian Zuniga on 20-06-21.
//

import SwiftUI

struct Header: View {
  var name: String
  var body: some View {
    HStack{
      VStack(alignment: .leading){
        Text("Hi, \(name)")
          .font(.system(size: 16, weight: .bold, design: .rounded))
          .opacity(0.4)
        Text("Dashboard")
          .font(.system(size: 28, weight: .semibold, design: .rounded))
      }
      
      .foregroundColor(.white)
      Spacer()
      Image("avatar")
        .resizable()
        .clipShape(Circle())
        .frame(width:48,height: 48)
    }
  }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
      Header(name: "antonia")
    }
}
