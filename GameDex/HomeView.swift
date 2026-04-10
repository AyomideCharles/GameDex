//
//  HomeView.swift
//  GameDex
//
//  Created by Charles on 4/9/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                HStack {
                    NavigationLink(destination: ProfileView()) {
                        Circle()
                            .stroke(Color(.accent), lineWidth: 1)
                            .frame(width: 50, height: 50)
                    }
                    VStack(alignment: .leading) {
                        Text("Nouvea")
                            .foregroundStyle(Color(.text))
                            .font(.system(size: 11))
                        Text("Hey Charles!")
                            .font(.system(size: 13))
                    }

                }
                Spacer()

                ZStack(alignment: .center) {
                    Circle()
                        .stroke(Color(.text), lineWidth: 1)
                        .frame(width: 50, height: 50)
                    Image(systemName: "house.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.white)
                }
            }
            
            Spacer().frame(height: 30)
            VStack(alignment: .leading) {
                Text("Explorons")
                    .foregroundStyle(Color(.text))
                    .font(.system(size: 13))
                Text("Jeux")
                    .foregroundStyle(.white)
                    .font(.system(size: 30))
                Spacer().frame(height: 40)
                HStack {
                    Text("Populaires")
                    Text("Nouveaux")
                    Text("Recommdés")
                }
                .font(.system(size: 13))

            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(Color(.background2))
        .foregroundStyle(.white)
        
    }
}

#Preview {
    HomeView()
}
