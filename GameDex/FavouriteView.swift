//
//  FavouriteView.swift
//  GameDex
//
//  Created by Charles on 4/9/26.
//

import SwiftUI

let gradientColors: [Color] = [
        .gradientTop,
        .gradientBottom
]


struct FavouriteView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ProfileHeader()
            Spacer().frame(height: 40)
            VStack(alignment: .leading) {
                Text("Jeux")
                    .foregroundStyle(Color(.text))
                    .font(.system(size: 13))
                Text("Favoris")
                    .foregroundStyle(.white)
                    .font(.system(size: 30))
                Spacer().frame(height: 40)
                HStack {
                    Text("Aventure")
                        .font(.system(size: 13))
                    Text("(1)")
                        .font(.system(size: 13))
                        .foregroundStyle(Color(.text))
                }
                Spacer().frame(height: 15)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        GameView()
                        GameView()
                        GameView()
                        GameView()
                        GameView()

                    }
                }
                Spacer().frame(height: 40)
                HStack {
                    Text("Shooter")
                        .font(.system(size: 13))
                    Text("(2)")
                        .font(.system(size: 13))
                        .foregroundStyle(Color(.text))
                }
                Spacer().frame(height: 15)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        GameView()
                        GameView()
                        GameView()
                        GameView()
                        GameView()

                    }
                }
                Spacer().frame(height: 40)
                HStack {
                    Text("Horreur")
                        .font(.system(size: 13))
                    Text("(1)")
                        .font(.system(size: 13))
                        .foregroundStyle(Color(.text))
                }
                Spacer().frame(height: 15)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        GameView()
                        GameView()
                        GameView()
                        GameView()
                        GameView()

                    }
                }


            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
        
            
    }
}

#Preview {
    FavouriteView()
}

struct GameView:View {
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 98, height: 98)
            .foregroundStyle(Color(.sRGB, red: 0.1412, green: 0.1569, blue: 0.1843, opacity: 1.0))
    }
}
