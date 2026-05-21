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
                    NavigationStack {
                        FavouriteView()
                    }
                }
                Tab("", systemImage: "person.crop.circle.fill"){
                    TipsView()
                }
                Tab("", systemImage: "message.fill"){
                    ChatView()
                }
            }
        }
    }
        
}

#Preview {
    GameDexTabView()
}
