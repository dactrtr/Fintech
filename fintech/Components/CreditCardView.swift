//
//  CreditCardView.swift
//  fintech
//
//  Created by Sebastian Zuniga on 20-06-21.
//

import SwiftUI

struct CreditCardView: View {
  @Binding var openWallet : Bool
  var body: some View {
    ZStack {
      Circle()
        .foregroundColor(Color(#colorLiteral(red: 0.3824964762, green: 0.3925487399, blue: 0.9833368659, alpha: 1)))
        .frame(width: 200)
        .offset(x: openWallet ? -140 : -320, y: -160)
      Circle()
        .foregroundColor(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
        .frame(width: 260)
        .offset(x: openWallet ? 100 : 800, y: -260)
      HStack{
        Image(systemName: "xmark")
          .font(.system(size: 22, weight: .black, design: .rounded))
        Text("Your Wallet")
          .padding(.leading, 16)
          .font(.system(size: 22, weight: .bold, design: .rounded))
        Spacer()
      }
      .foregroundColor(.white)
      .offset(x: openWallet ? 0 : -900,y: -350)
      .onTapGesture {
        withAnimation(.spring()){
        
          openWallet.toggle()
        }
      }
      dots()
        .offset(y:-90)
        .opacity(openWallet ? 1 : 0)
      HStack {
        MiniBalanceCard(openWallet: $openWallet)
        Spacer()
        SettingsCard(openWallet: $openWallet)
      }
      .padding(.top,24)
      
      ZStack(alignment: .bottom) {
        VStack(spacing: 16){
          HStack(spacing: 16){
            Image(systemName: "magnifyingglass")
              .font(.system(size: 12))
              .padding(8)
              .background(
                Circle()
                  .stroke(
                    Color.white.opacity(0.3)
                  )
              )
            SmallTag(tagName: "Period")
            SmallTag(tagName: "Amount")
            SmallTag(tagName: "Product")
            SmallTag(tagName: "Type")
          }
          .foregroundColor(.white)
          HStack{
            Text("23 March")
            Spacer()
            Text("-$ 813")
          }
          .font(.system(size: 14, weight: .bold, design: .rounded))
          .foregroundColor(.white.opacity(0.6))
          ListItem()
          ListItem()
        }
        .padding(24)
        HStack{
          Spacer()
          Text("See all")
            .font(.system(size: 12, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .padding(.vertical,6)
            .padding(.horizontal)
            .background(Color(#colorLiteral(red: 0.2879821956, green: 0.5874122977, blue: 0.9898821712, alpha: 1)).clipShape(
              RoundedRectangle(cornerRadius: 8, style: .continuous)
            ))
            .padding(16)
            .padding(.top, 32)
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1707094312, green: 0.1807294488, blue: 0.1891024709, alpha: 1)).opacity(0.1), Color(#colorLiteral(red: 0.1707094312, green: 0.1807294488, blue: 0.1891024709, alpha: 1))]), startPoint: .top, endPoint: .bottom))
      }
      .frame(height: openWallet ? 220 : 210)
      .cardBackground(with: 24)
      .offset(y: openWallet ? 220: 800)
      
      CreditCard()
        .scaleEffect(openWallet ? 1 : 0.9)
        .offset(y: openWallet ? -220 : 0)
        .onTapGesture {
          withAnimation(.spring()){
          
            openWallet.toggle()
          }
        }
      
    }
  }
}

struct CreditCardView_Previews: PreviewProvider {
  static var previews: some View {
    CreditCardView(openWallet: .constant(true))
  }
}

struct SettingsCard: View {
  @Binding var openWallet : Bool
  var body: some View {
    VStack{
      Image(systemName: "shield")
        .font(.system(size: 24, weight: .bold, design: .rounded))
        .foregroundColor(.white)
        .padding(8)
        .background(Color.blue.clipShape(Circle()))
      Text("Settings")
        .font(.system(size: 14, weight: .bold, design: .rounded))
        .foregroundColor(.white)
    }
    .padding(24)
    .frame(height:120)
    .cardBackground(with: 24)
    .offset(x: openWallet ? 0: 200)
    .opacity(openWallet ? 1 : 0)
  }
}

struct MiniBalanceCard: View {
  @Binding var openWallet : Bool
  var body: some View {
    HStack(alignment:.top) {
      VStack(alignment:.leading){
        Text("Balance")
          .font(.system(size: 16, weight: .heavy, design: .rounded))
          .padding(.bottom,4)
          .opacity(0.3)
        Text("$ 6,421.52")
          .font(.system(size: 22, weight: .heavy, design: .rounded))
      }
      Image("minichart")
        .resizable()
        .frame(width: 40, height: 30)
      
    }
    .foregroundColor(.white)
    .padding(.horizontal, 24)
    
    .frame(height:120)
    .cardBackground(with: 24)
    .offset(x: openWallet ? 0: -300)
    .opacity(openWallet ? 1 : 0)
  }
}

struct SmallTag: View {
  var tagName : String
  var body: some View {
    Text("\(tagName)")
      .allowsTightening(true)
      .font(.system(size: 10, weight: .bold, design: .rounded))
      .opacity(0.6)
      .padding(8)
      .background(
        RoundedRectangle(cornerRadius: 8)
          .stroke(
            Color.white.opacity(0.3)
          )
      )
  }
}


