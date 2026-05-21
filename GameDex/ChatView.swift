//
//  ChatView.swift
//  GameDex
//
//  Created by Charles on 4/10/26.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ProfileHeader()
            Spacer().frame(height: 30)
            Text("Buy me a coffee")
                .foregroundStyle(Color(.text))
                .font(.system(size: 13))
            Text("À propos")
                .foregroundStyle(.white)
                .font(.system(size: 30))
            Spacer().frame(height: 30)
            Text("Qui somme nous")
                .font(.system(size: 13))
                .bold()
            
            Spacer().frame(height: 8)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .font(.system(size: 13))
                .foregroundStyle(Color(.text))
            Spacer().frame(height: 30)
            Text("Notre but")
                .font(.system(size: 13))
                .bold()
            
            Spacer().frame(height: 8)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .font(.system(size: 13))
                .foregroundStyle(Color(.text))
            Spacer().frame(height: 50)
            Button {
                
            } label: {
                HStack(spacing: 10) {
                    Image(systemName: "heart.fill")
                    Text("Soutenir")
                }
                .frame(maxWidth: .infinity, minHeight: 50)
                .background(.blue)
                .cornerRadius(12)
            }
            
        }
        .padding()
        .foregroundStyle(.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(Color(.background2))
    }
}

#Preview {
    ChatView()
}
