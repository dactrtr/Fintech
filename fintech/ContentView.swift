//
//  ContentView.swift
//  fintech
//
//  Created by Sebastian Zuniga on 30-05-21.
//

import SwiftUI

struct ContentView: View {
  @State var openWallet : Bool = false
  @State var position : CGFloat = 0
  @State var cardPosition : CGFloat = 0
  @State var opacityItem : CGFloat = 1
  
  var body: some View {
    
    ZStack(alignment: .top) {
      Color(#colorLiteral(red: 0.1452291906, green: 0.165346235, blue: 0.1863514185, alpha: 1)).edgesIgnoringSafeArea(.all) // Background, in real world should be managed by darkmode
      VStack{
        Header(name: "Carla")
          .offset(y:openWallet ? -380 : 0)
        HeroCard()
          .offset(y:openWallet ? -380 : 0)
          .padding(.bottom, 24)
        ZStack(alignment: .bottom){
          Color.black.opacity(0) // empty element
            .cardBackground(with: 24)
            .offset(y: openWallet ? 300:0)
            .scaleEffect(openWallet ? 0.9 : 1)
            .opacity(openWallet ? 0 : 1)
          CreditCardView(openWallet: $openWallet)
          ZStack {
            VStack{
              // The small "handle" purely visual
              Color.white.opacity(0.3)
                .frame(width:40, height: 6)
                .clipShape(RoundedRectangle(cornerRadius: 56))
              BalanceHeader()
              Group{
                ListTitle()
                ListItem()
                Spacer()
              }
              .opacity(Double(opacityItem))
            }
            .padding()
            .frame(height: 210)
            .cardBackground(with: 24)
            .offset(y: position)
            .gesture(DragGesture()
                      .onChanged({ value in
                        position = value.location.y
                        if (value.location.y<0){
                          position = 0
                        }
                        if (value.location.y>100){
                          position = 100
                        }
                        opacityItem = (100 - value.location.y * 2) / 100
                      })
                      .onEnded({ value in
                        if (position>60) {
                          position = 100
                        }
                        if (position<60){
                          position = 0
                          opacityItem = 1
                        }
                      })
            )
          }
          .clipShape(RoundedRectangle(cornerRadius:24, style: .continuous))
          .offset(y: openWallet ? 300:0)
          .scaleEffect(openWallet ? 0.9 : 1)
          .opacity(openWallet ? 0 : 1)
          dots()
            .padding(.bottom,4)
            .offset(y: openWallet ? 300:0)
            .scaleEffect(openWallet ? 0.9 : 1)
            .opacity(openWallet ? 0 : 1)
        }
        .frame(height: 210)
        .shadow(color: .black.opacity(0.3), radius: 8, x: 0, y: 8)
        .padding(.bottom,24)
        
        HStack {
          MiniCard(title: "Profit", percent: "52.2", month: "Feb")
            .offset(x: openWallet ? -300 : 0)
          Spacer()
          MiniCard(title: "Debt", percent: "53.2", month: "Mar")
            .offset(x: openWallet ? 300 : 0)
        }
        BottomBar()
          .opacity(openWallet ? 0 : 1)
          .offset(y: openWallet ? 600: 0)
      }
      .edgesIgnoringSafeArea(.all)
      .padding(.top,24)
      .padding(.horizontal)
    }
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}



