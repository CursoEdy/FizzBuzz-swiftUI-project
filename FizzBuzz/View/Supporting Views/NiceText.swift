//
//  NiceText.swift
//  FizzBuzz
//
//  Created by ednardo alves on 20/11/24.
//

import SwiftUI

struct NiceText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding()
    }
}

#Preview {
    NiceText(text: "Hello, World!")
}
