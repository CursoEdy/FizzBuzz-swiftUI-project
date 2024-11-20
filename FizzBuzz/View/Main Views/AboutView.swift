//
//  AboutView.swift
//  FizzBuzz
//
//  Created by ednardo alves on 20/11/24.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.5).ignoresSafeArea()
            
            Text("""
                Fizz buzz é um jogo de palavras em grupo para crianças que as ensina sobre divisão. Os jogadores se revezam para contar incrementalmente, substituindo qualquer número divisível por três pela palavra "fizz", e qualquer número divisível por cinco pela palavra "buzz", e qualquer número divisível por três e cinco pela palavra "fizzbuzz".
            """)
            .font(.title)
            .fontWeight(.semibold)
            .multilineTextAlignment(.leading)
            .minimumScaleFactor(0.1)
            .padding()
            
            
        }
    }
}

#Preview {
    AboutView()
}
