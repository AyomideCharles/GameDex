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
                    .font(.largeTitle)                    .fontWeight(.bold)
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
                        NavigationLink(destination: GameDetailsView()) {
                            GameView(gameImage: "ghost", gameName: "Ghost of Tshuma")
                        }
                        GameView(gameImage: "tomb", gameName: "Tomb Raider")
                        GameView(gameImage: "creed", gameName: "Assassins Creeed")
                        GameView(gameImage: "battle", gameName: "Battlefield")
                        GameView(gameImage: "COD", gameName: "Call of duty")

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
                        GameView(gameImage: "creed", gameName: "String")
                        GameView(gameImage: "battle", gameName: "String")
                        GameView(gameImage: "tomb", gameName: "String")
                        GameView(gameImage: "ghost", gameName: "String")
                        GameView(gameImage: "COD", gameName: "String")

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
                        GameView(gameImage: "COD", gameName: "String")
                        GameView(gameImage: "ghost", gameName: "String")
                        GameView(gameImage: "battle", gameName: "String")
                        GameView(gameImage: "tomb", gameName: "String")
                        GameView(gameImage: "creed", gameName: "String")

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
    let gameImage: String
    let gameName: String
    var body: some View {
        VStack {
            Image(gameImage)
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 98, height: 98)
                .cornerRadius(30)
//            RoundedRectangle(cornerRadius: 30)
//                .frame(width: 98, height: 98)
//                .foregroundStyle(Color(.sRGB, red: 0.1412, green: 0.1569, blue: 0.1843, opacity: 1.0))
            Spacer().frame(height: 10)
            Text(gameName)
                .font(.caption)
        }
    }
}
