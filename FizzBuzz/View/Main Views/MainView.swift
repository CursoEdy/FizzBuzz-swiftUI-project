//
//  MainView.swift
//  FizzBuzz
//
//  Created by ednardo alves on 20/11/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            
            BackgroundText(text: "FizzBuzzView", color: .blue)
                .tabItem {
                    Label(
                        "FizzBuzz",
                        systemImage: "bubbles.and.sparkles"
                    )
                }
            
            BackgroundText(text: "CodeCreatorView", color: .red)
                .tabItem {
                    Label(
                        "Code",
                        systemImage: "note.text"
                    )
                }
            
//            BackgroundText(text: "AboutView", color: .green)
            AboutView()
                .tabItem {Label(
                    "About",
                    systemImage: "info.bubble.fill"
                )
            }
        }
    }
}

struct BackgroundText: View {
    
    let text: String
    let color: Color
    
    var body: some View {
        ZStack {
            color
                .opacity(0.5)
                .ignoresSafeArea()
            Text(text)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    MainView()
}
