//
//  SettingsView.swift
//  ArithmeticLineColors
//
//  Created by Kirin Mike on 18/11/2024.
//

import SwiftUI
import StoreKit

struct SettingsView: View {
    @Environment(\.requestReview) var requestReview
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
            
            VStack(spacing: 15) {
               

                
                Button {
                    if let url = URL(string: "https://www.dropbox.com/scl/fi/nkz3agp6w1ymozksjac89/Privacy-Policy-for-Arithmenic-Line-Colors.paper?rlkey=bla6lxvuyy4abmepsqlikd0as&st=jue8yo1j&dl=0") {
                        UIApplication.shared.open(url)
                    }
                } label: {
                  
                    CornedButton(text: "Privacy", strokeColor: Color.init(hex: "#E8AA41"), fillColor: Color.init(hex: "#D55639"), size: 30)
                }

                Button {
                    requestReview()
                } label: {
                    CornedButton(text: "Rate", strokeColor: Color.init(hex: "#2B78A8"), fillColor: Color.init(hex: "#2E7B5B"), size: 30)
                }
            }
        }
    }
}
