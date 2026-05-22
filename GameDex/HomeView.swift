import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ProfileHeader()
            Spacer().frame(height: 30)
            VStack(alignment: .leading) {
                Text("Let's explore")
                    .foregroundStyle(Color(.text))
                    .font(.system(size: 13))
                Text("Games")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer().frame(height: 40)
                HStack(spacing: 15) {
                    Text("Popular")
                        .font(.system(size: 14, weight: .semibold))
                    Text("New")
                        .font(.system(size: 14, weight: .semibold))
                    Text("Recommended")
                        .font(.system(size: 14, weight: .semibold))
                }
                .font(.system(size: 13))

            }
            TabView {
                NavigationLink(destination: GameDetailsView(gameName: "Tomb Raider", gameImage: "tomb")  ) {
                    CardView(image: "tomb", name: "Tomb Raider", subtitle: "Ubisoft")
                }
                NavigationLink(destination: GameDetailsView(gameName: "Call of Duty", gameImage: "COD")) {
                    CardView(image: "COD", name: "Call of Duty", subtitle: "Infinity Ward")
                }

                NavigationLink(destination: GameDetailsView(gameName: "Battle Field", gameImage: "battle")) {
                    CardView(image: "battle", name: "Battle Field", subtitle: "EA")
                }
            }
            .background(Color(.background2))
            .tabViewStyle(.page)
                
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

struct CardView: View{
    
    let image: String
    let name: String
    let subtitle: String
    
    var body: some View{
        ZStack (alignment: .bottom) {
            Image(image)
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 292, height: 396)
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(name)
                        .font(.system(size: 15, weight: .bold))
                    Text(subtitle)
                        .font(.system(size: 12))
                }
                Spacer()
                Image(systemName: "arrow.right")
                    .font(.system(size: 14, weight: .bold))


            }
            .foregroundStyle(.white)
            .padding(.horizontal, 16)
            .padding(.vertical, 14)
            .background(.gray).opacity(0.8)
            .cornerRadius(28)
            .padding(.horizontal, 16)
            .padding(.bottom, 16)
            
        }
        .frame(width: .infinity, height: 396)
        .cornerRadius(30)
    }
}


