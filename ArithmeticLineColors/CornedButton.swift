//
//  ButtonMine.swift
//  ArithmeticLineColors
//
//  Created by Kirin Mike on 18/11/2024.
//

import SwiftUI


struct CornedButton: View {
    let text: String
    let strokeColor: Color
    let fillColor: Color
    @State var size: CGFloat?
    var body: some View {
        RoundedRectangle(cornerRadius: 23)
            .fill(fillColor)
            .overlay {
                RoundedRectangle(cornerRadius: 23)
                    .stroke(strokeColor
                        ,lineWidth: 6)
                
                Text(text)
                    .font(.system(size: size == nil ? 52 : size!, weight: .semibold))
                   
                    .foregroundStyle(Color.init(hex: "#E9E6D9"))
            }
            .frame(width: 242, height: 86)
        
//
    }
}
