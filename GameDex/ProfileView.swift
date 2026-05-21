import SwiftUI

struct ProfileView: View {
    
    struct ProfileItem {
        let icon: String
        let label: String
    }
    var profileList: [ProfileItem] = [
        ProfileItem(icon: "gamecontroller.fill", label: "Platforms"),
        ProfileItem(icon: "heart.fill", label: "Favourites"),
        ProfileItem(icon: "clock.fill", label: "History"),
        ProfileItem(icon: "envelope.fill", label: "Contact"),
        ProfileItem(icon: "hand.raised.fill", label: "Support Us")
    ]
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Spacer().frame(height: 20)
                Text("You are in")
                    .foregroundStyle(Color(.text))
                    .font(.system(size: 13))
                Spacer().frame(height: 10)
                Text("Your settings")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer().frame(height: 40)
                HStack(spacing: 15) {
                    Image("COD")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color(.accent), lineWidth: 1))
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Charles Ayomide")
                            .bold()
                            .font(.system(size: 16))
                        Text("New")
                            .foregroundStyle(Color(.text))
                            .font(.system(size: 14))
                    }
                }
                Spacer().frame(height: 30)
                VStack(spacing: 0) {
                    ForEach(profileList, id: \.label) { profile in
                        HStack(spacing: 32) {
                            Image(systemName: profile.icon)
                                .frame(width: 20)
                                .foregroundStyle(.accent)
                            Text(profile.label)
                                .font(.system(size: 16))
                            Spacer()
                        }
                        .padding(.vertical, 25)
                        Divider()
                            .background(Color(.background))
                    }
                }
                Spacer().frame(height: 40)
                Button {
                    
                } label: {
                    HStack(spacing: 10) {
                        Image(systemName: "rectangle.portrait.and.arrow.right")
                        Text("Sign Out")
                    }
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .background(.red)
                    .cornerRadius(12)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .foregroundStyle(.white)
        }
        .background(Color(.background2))
        .scrollIndicators(.hidden)
        .toolbar(.hidden, for: .tabBar)
    }
}

#Preview {
    ProfileView()
}
