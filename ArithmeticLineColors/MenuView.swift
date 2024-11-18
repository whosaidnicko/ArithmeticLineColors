//
//  MenuView.swift
//  ArithmeticLineColors
//
//  Created by Kirin Mike on 18/11/2024.
//

import SwiftUI

struct MenuView: View {
    @EnvironmentObject private var navigationMng: NavigationMng
    @State var animationTurnOn: Bool = false
    var body: some View {
        ZStack {
            VStack {
                Image("circleLog")
                    .scaleEffect(animationTurnOn ? 0.7 : 0.5)
                    .rotationEffect(.degrees(animationTurnOn ? 360 : 0))
                    .cornerRadius(animationTurnOn ? 100 : 0)
                    .onAppear() {
                        withAnimation(Animation.bouncy(duration: 3).repeatForever()) {
                            animationTurnOn = true
                        }
                    }
              
                VStack(spacing: 20) {
                    Button {
                        withAnimation {
                            navigationMng.viewCh = .game
                        }
                    } label: {
                        CornedButton(text: "PLAY", strokeColor: Color.init(hex: "#E8AA41"), fillColor: Color.init(hex: "#D55639"), size: 50)
                    }

                    
                    Button {
                        withAnimation {
                            navigationMng.viewCh = .rules
                        }
                    } label: {
                        CornedButton(text: "INFO", strokeColor: Color.init(hex: "#2B78A8"), fillColor: Color.init(hex: "#2E7B5B"), size: 34)
                    }

                    
                    Button {
                        withAnimation {
                            navigationMng.viewCh = .settings
                        }
                    } label: {
                        CornedButton(text: "SETTINGS", strokeColor: Color.init(hex: "#D55639"), fillColor: Color.init(hex: "#E8AA41"), size: 34)
                    }

                    
                }
                .padding(.top, 40)
                
              Spacer()
            }
            .padding()
            
            
        }
    }
}
