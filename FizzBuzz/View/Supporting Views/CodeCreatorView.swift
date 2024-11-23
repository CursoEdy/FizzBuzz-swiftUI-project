//
//  CodeCreatorView.swift
//  FizzBuzz
//
//  Created by ednardo alves on 20/11/24.
//

import SwiftUI
import UniformTypeIdentifiers

struct CodeCreatorView: View {
    @StateObject var fizzBuzzAlgViewModel: FizzBuzzAlgViewModel = FizzBuzzAlgViewModel()
    
    var body: some View {
        
        NavigationStack {
            List (fizzBuzzAlgViewModel.fizzBuzzModels) { item in
                NavigationLink(item.name) {
                    ZStack {
                        Color.gray
                            .opacity(0.5)
                            .ignoresSafeArea()
                        
                        ScrollView {
                            VStack {
                                Text(item.actualFizzBuzzCode)
                                    .font(.headline)
                                    .padding()
                                    .minimumScaleFactor(0.1)
                                    .contextMenu {
                                        Button(action: {
                                            UIPasteboard
                                                .general
                                                .string = item.actualFizzBuzzCode
                                        }) {
                                            Text("Copy to clipboard")
                                            Image(systemName: "doc.on.doc")
                                        }
                                    }
                            }
                        }
                    }
                }
            }
            .navigationTitle("FizzBuzz")
        }
    }
}

#Preview {
    CodeCreatorView()
}
