//
//  FizzBuzzView.swift
//  FizzBuzz
//
//  Created by ednardo alves on 20/11/24.
//

import SwiftUI

struct FizzBuzzView: View {
    let MAX = 100
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(1..<MAX) { i in
                    if i % 5 == 0 && i % 3 == 0 {
                        NiceText(text: "FizzBuzz")
                    } else if i % 5 == 0 {
                        NiceText(text: "Buzz")
                    } else if i % 3 == 0 {
                        NiceText(text: "Fizz")
                    } else {
                        NiceText(text: "\(i)")
                    }
                }
            }
        }
    }
}

#Preview {
    FizzBuzzView()
}
