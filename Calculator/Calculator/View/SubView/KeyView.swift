//
//  KeyView.swift
//  Calculator
//
//  Created by 박채영 on 2023/09/17.
//

import SwiftUI

struct KeyView<ShapeType: Shape>: View {
    let keyShape: ShapeType
    let keyWidth: CGFloat
    let keyHeight: CGFloat
    let keyColor: Color

    let text: String
    let textColor: Color
    
    var body: some View {
        Button {
            
        } label: {
            ZStack {
                keyShape
                    .fill(keyColor)
                Text(text)
                    .foregroundColor(textColor)
                    .font(.largeTitle)
            }
            .frame(width: keyWidth, height: keyHeight)
        }
        .padding(EdgeInsets(top: 3, leading: 3, bottom: 3, trailing: 3))
    }
}

struct KeyView_Previews: PreviewProvider {
    static var previews: some View {
        KeyView(
            keyShape: Circle(),
            keyWidth: 100,
            keyHeight: 100,
            keyColor: .gray,
            text: "AC",
            textColor: .black
        )
    }
}
