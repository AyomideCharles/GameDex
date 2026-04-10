//
//  ProfileHeader.swift
//  GameDex
//
//  Created by Charles on 4/10/26.
//

import SwiftUI

struct ProfileHeader: View {
    var body: some View {
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
    }
}

#Preview {
    ProfileHeader()
}
