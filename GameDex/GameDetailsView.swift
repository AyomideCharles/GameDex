import SwiftUI

struct GameDetailsView: View {
    @State private var selectedTab = 0
    @State private var selectedQuest: String? = nil
    
    let gameName : String
    let gameImage: String

    let tabs = ["Weekly Quests", "Mid-Season Deliveries", "Quests"]

    var body: some View {
        GeometryReader { geo in
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    Image(gameImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: geo.size.width, height: 400)
                        .clipped()

                    VStack(alignment: .leading, spacing: 0) {

                        HStack(alignment: .center) {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Tips")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                HStack(spacing: 8) {
                                    Text(gameName)
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(.blue)
                                        .font(.title2)
                                }
                            }
                            Spacer()
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.white)
                                .font(.title2)
                        }
                        .padding(.horizontal, 16)
                        .padding(.top, 20)
                        .padding(.bottom, 16)

                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 24) {
                                ForEach(tabs.indices, id: \.self) { index in
                                    VStack(spacing: 6) {
                                        Text(tabs[index])
                                            .font(.subheadline)
                                            .fontWeight(selectedTab == index ? .semibold : .regular)
                                            .foregroundColor(selectedTab == index ? .white : .gray)
                                        Rectangle()
                                            .frame(width: 50, height: 2)
                                            .foregroundColor(selectedTab == index ? .blue : .clear)
                                    }
                                    .onTapGesture { selectedTab = index }
                                }
                            }
                            .padding(.horizontal, 16)
                        }
                        .padding(.bottom, 8)

                        Divider().background(Color.gray.opacity(0.3))

                        VStack(spacing: 8) {
                            ForEach(Array(quests.enumerated()), id: \.element) { index, quest in
                                HStack {
                                    Text(quest)
                                        .foregroundColor(.white)
                                        .font(.system(size: 14))
                                    Spacer()
                                    Image(systemName: "eye")
                                        .foregroundColor(.gray)
                                }
                                .padding(.horizontal, 16)
                                .padding(.vertical, 18)
                                .background(Color.white.opacity(0.07))
                                .cornerRadius(10)
                                .onTapGesture {
                                    print("Tapped quest at index: \(index)")
                                    selectedQuest = quest
                                }
                            }
                        }
                        .padding(16)
                    }
                    .frame(width: geo.size.width)
                }
            }
            .ignoresSafeArea(edges: .top)
        }
        .background(Color(.background2))
        .toolbar(.hidden, for: .tabBar)
        .sheet(item: $selectedQuest) { quest in
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Text("Selected Quest")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "multiply")
                        .foregroundColor(.gray)

                }
                Spacer().frame(height: 10)
                Text(quest)
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                Text("For this quest, you simply need to tame or hunt wolves, boars, chickens, or crows.")
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
                Spacer().frame(height: 10)
                Text("How to tame an animal?")
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                Text("For this quest, you simply need to tame or hunt wolves, boars, chickens, or crows.")
                    .foregroundColor(.gray)
                    .font(.system(size: 12))

            }
            .padding(.horizontal, 20)
            .padding(.vertical, 30)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(Color(.background))
            .presentationDetents([.medium])
        }
    }
    
    
//    Selected Quest
//
//    Weekly Quests
//
//    Tame or hunt wildlife
//
//
//    How to tame an animal?
//
//
//
//    Which animals can be tamed?
//
//    Where to find them?
//
//    Survive players
//
//    Search chests or ammo boxes…

    let quests = [
        "Tame or hunt wildlife",
        "Travel distance in a vehicle",
        "Restore HP",
        "Outlive players",
        "Search chests or ammo boxes",
        "Activate reinforcements"
    ]
}

extension String: @retroactive Identifiable {
    public var id: String { self }
}

#Preview {
    GameDetailsView(gameName: "Fortnite", gameImage: "COD")
}
