//
//  LinesPlusAritGame.swift
//  ArithmeticLineColors
//
//  Created by Kirin Mike on 18/11/2024.
//

import SwiftUI

struct LinesPlusAritGame: View {
    @State var showImage: Bool = true
    @State var animation: Bool = false
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
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.init(hex: "#E8AA41"))
                            .overlay {
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color.init(hex: "#D55639")
                                        ,lineWidth: 6)
                                
                                Text("HOME")
                                    .font(.system(size: 20, weight: .semibold))
                                   
                                    .foregroundStyle(Color.init(hex: "#E9E6D9"))
                            }
                            .frame(width: 100, height: 40)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                ZStack {
                    WKWebViewRepresentable(url: URL(string: "https://plays.org/game/arithmetic-line/")!, onLoadCompletion: {
                        showImage = false
                        //            loadingFinished = true
                    })
                    
                    Image("circleLog")
                        .scaleEffect(animation ? 1 : 0.8)
                        .cornerRadius(50)
                        .animation(Animation.bouncy(duration: 0.2).repeatForever(), value: animation )
                        .opacity(showImage ? 1 : 0)
                        .onAppear() {
                            animation = true
                        }
                }
            }
            .padding(.vertical)
        }
    }
}
