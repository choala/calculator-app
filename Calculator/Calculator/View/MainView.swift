//
//  MainView.swift
//  Calculator
//
//  Created by 박채영 on 2023/09/17.
//

import SwiftUI

struct MainView: View {
    @State private var total: Int = 0
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    Text("\(total)")
                        .font(.system(size: 80, weight: .light))
                        .foregroundColor(.white)
                        .padding(.trailing, 20)
                }
                
                Group {
                    HStack {
                        if total == 0 {
                            KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myGray, text: "AC", textColor: .black)
                        } else {
                            KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myGray, text: "C", textColor: .black)
                        }
                        KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myGray, text: "+/-", textColor: .black)
                        KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myGray, text: "%", textColor: .black)
                        KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myOrange, text: "÷", textColor: .white)
                    }
                    HStack {
                        KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myDarkGray, text: "7", textColor: .white)
                        KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myDarkGray, text: "8", textColor: .white)
                        KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myDarkGray, text: "9", textColor: .white)
                        KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myOrange, text: "×", textColor: .white)
                    }
                    HStack {
                        KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myDarkGray, text: "4", textColor: .white)
                        KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myDarkGray, text: "5", textColor: .white)
                        KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myDarkGray, text: "6", textColor: .white)
                        KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myOrange, text: "−", textColor: .white)
                    }
                    HStack {
                        KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myDarkGray, text: "1", textColor: .white)
                        KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myDarkGray, text: "2", textColor: .white)
                        KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myDarkGray, text: "3", textColor: .white)
                        KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myOrange, text: "+", textColor: .white)
                    }
                    HStack {
                        KeyView(keyShape: Capsule(), keyWidth: 175, keyHeight: 80, keyColor: .myDarkGray, text: "0", textColor: .white)
                        KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myDarkGray, text: ".", textColor: .white)
                        KeyView(keyShape: Circle(), keyWidth: 80, keyHeight: 80, keyColor: .myOrange, text: "=", textColor: .white)
                    }
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
