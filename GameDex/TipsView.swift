import SwiftUI

struct TipsView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ProfileHeader()
                Spacer().frame(height: 30)
                VStack(alignment: .leading) {
                    Text("Dernieres")
                        .foregroundStyle(Color(.text))
                        .font(.system(size: 13))
                    HStack(alignment: .center) {
                        Text("Astuces")
                            .foregroundStyle(.white)
                            .font(.system(size: 30))
                        Spacer()
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(Color(.background))
                    }
                    Spacer().frame(height: 40)
                    VStack(spacing: 20) {
                        LikedGames(
                            gameName: "Modern Warfare 2",
                            gameDescription: "A fast-paced military shooter with intense missions, tactical combat, and iconic special forces action.",
                            gameImage: "COD"
                        )

                        LikedGames(
                            gameName: "Battlefield 2",
                            gameDescription: "Large-scale warfare featuring vehicles, squad-based gameplay, and explosive multiplayer battles.",
                            gameImage: "battle"
                        )

                        LikedGames(
                            gameName: "Ghost of Tsushima",
                            gameDescription: "A cinematic samurai adventure set in feudal Japan, focused on sword combat and stealth.",
                            gameImage: "ghost"
                        )

                        LikedGames(
                            gameName: "Assassin's Creed",
                            gameDescription: "An action-adventure game centered on parkour, stealth assassinations, and historical worlds.",
                            gameImage: "creed"
                        )

                        LikedGames(
                            gameName: "Tomb Raider",
                            gameDescription: "Follow Lara Croft through dangerous tombs, puzzles, and thrilling survival adventures.",
                            gameImage: "tomb"
                        )

                        LikedGames(
                            gameName: "Modern Warfare 2",
                            gameDescription: "Experience cinematic combat missions and high-stakes global warfare scenarios.",
                            gameImage: "COD"
                        )
                    }
                }
                
            }
            .padding()
            .foregroundStyle(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(Color(.background2))

    }
}

#Preview {
    TipsView()
}


struct LikedGames:View {
    let gameName: String
    let gameDescription: String
    let gameImage: String
    
    
    var body: some View{
        HStack {
            Image(gameImage)
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 98, height: 98)
                .cornerRadius(30)
            Spacer().frame(width: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text(gameName)
                        .bold()
                        .font(.system(size: 13))
                    Spacer().frame(height: 10)
                    Text(gameDescription)
                        .foregroundStyle(Color(.text))
                        .font(.system(size: 13))
                }
                Spacer()
                Image(systemName: "heart.fill")
            }
        }
    }
}
