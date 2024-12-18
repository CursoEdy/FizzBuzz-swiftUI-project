//
//  BackgroundImageView.swift
//  FizzBuzz
//
//  Created by ednardo alves on 20/11/24.
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
        AsyncImage(url: URL(string: getImage()),transaction: Transaction(animation: .default)
        ) {
            phase in
            switch phase {
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 0.3)
                    .ignoresSafeArea()
                
            default:
                Color.clear
                    .opacity(0.5)
                    .ignoresSafeArea()
            }
        }
    }
    
    func getImage() -> String {
        let listOfImages = [
            "https://code.kx.com/q/img/fizzbuzz.png",
            "https://images.pexels.com/photos/4068379/pexels-photo-4068379.jpeg?auto=compress&cs=tinysrgb&w=1600",
            "https://images.pexels.com/photos/6387827/pexels-photo-6387827.jpeg?auto=compress&cs=tinysrgb&w=1600"
        ]
        
        return listOfImages.randomElement() ?? ""
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
