//
//  RulesView.swift
//  ArithmeticLineColors
//
//  Created by Nicolae Chivriga on 18/11/2024.
//

import SwiftUI

struct RulesView: View {
    @EnvironmentObject private var navigationManager: NavigationMng
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button {
                        withAnimation {
                            navigationManager.viewCh = .menu
                        }
                    } label: {
                        Image("bkimg")
                    }
                    
                    
                    
                    
                    Spacer()
                    
                }
                Spacer()
            }
            .padding()
            
            StrokeText(text:"""
This is a simple but difficult math game with moving the ball idly. Move the ball from left to right to avoid hitting walls and any other obstacles you
encounter. Press the correct key that completes the equation.
""", width: 1 , color: .black )
            .font(.system(size: 35, weight: .semibold))
            .foregroundStyle(Color.init(hex: "#E9E6D9"))
            .multilineTextAlignment(.center )
            .padding(.horizontal)
        }
    }
}
