import SwiftUI

struct GameDexTabView: View {
    var body: some View {
        ZStack {
            Color(.red)
            TabView {
                Tab("", systemImage: "house.fill"){
                    NavigationStack {
                        HomeView()
                    }
                }
                Tab("", systemImage: "heart.fill"){
                    FavouriteView()
                }
                Tab("", systemImage: "person.crop.circle.fill"){
                    TipsView()
                }
                Tab("", systemImage: "message.fill"){
                    FavouriteView()
                }
            }
        }
    }
        
}

#Preview {
    GameDexTabView()
}
