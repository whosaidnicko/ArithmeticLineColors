//
//  LoadingMateGe.swift
//  ArithmeticLineColors
//
//  Created by Kirin Mike on 18/11/2024.
//

import SwiftUI

struct LoadingMateGe: View {
    @EnvironmentObject private var navigatioManager: NavigationMng
    @State var loadingProcess: Bool = false
    var body: some View {
        ZStack {
         
            
            VStack {
                Spacer()
                HStack(spacing: 6) {
                    Circle()
                        .fill(Color.init(hex: "#E8AA41"))
                        .overlay(alignment: .leading) {
                            Circle()
                                .fill(Color.init(hex: "#D55639"))
                                .frame(width: 54 * (loadingProcess ? 1 : 0))
                                .animation(Animation.linear(duration: 0.4), value: loadingProcess)
                        }
                        .frame(width: 54, height: 54)
                    
                    Rectangle()
                        .fill(Color.init(hex: "#000000"))
                        .overlay(alignment: .leading) {
                            Rectangle()
                                .fill(Color.init(hex: "#FFFFFF"))
                                .frame(width: 54 * (loadingProcess ? 1 : 0))
                                .animation(Animation.linear(duration: 0.4).delay(0.4), value: loadingProcess)
                        }
                        .frame(width: 54, height: 12)
                    
                    Circle()
                        .fill(Color.init(hex: "#2B78A8"))
                        .overlay(alignment: .leading) {
                            Circle()
                                .fill(Color.init(hex: "#2E7B5B"))
                                .frame(width: 54 * (loadingProcess ? 1 : 0))
                                .animation(Animation.linear(duration: 0.4).delay(0.8), value: loadingProcess)
                        }
                        .frame(width: 54, height: 54)
                    
                    Rectangle()
                        .fill(Color.init(hex: "#000000"))
                        .overlay(alignment: .leading) {
                            Rectangle()
                                .fill(Color.init(hex: "#FFFFFF"))
                                .frame(width: 54 * (loadingProcess ? 1 : 0))
                                .animation(Animation.linear(duration: 0.4).delay(1.2), value: loadingProcess)
                        }
                        .frame(width: 54, height: 12)
                    
                    Rectangle()
                        .fill(Color.init(hex: "#000000"))
                        .overlay(alignment: .leading) {
                            Rectangle()
                                .fill(Color.init(hex: "#FFFFFF"))
                                .frame(width: 54 * (loadingProcess ? 1 : 0))
                                .animation(Animation.linear(duration: 0.4).delay(1.6), value: loadingProcess)
                        }
                        .frame(width: 54, height: 12)
                }
            }
            .padding(.vertical)
            .onAppear() {
                loadingProcess = true
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        self.navigatioManager.viewCh = .menu
                    }
                }
            }
        }
    }
}
struct StrokeText: View {
    let text: String
    let width: CGFloat
    let color: Color

    var body: some View {
        ZStack{
            ZStack{
                Text(text).offset(x:  width, y:  width)
                Text(text).offset(x: -width, y: -width)
                Text(text).offset(x: -width, y:  width)
                Text(text).offset(x:  width, y: -width)
            }
            .foregroundColor(color)
            Text(text)
        }
    }
}
