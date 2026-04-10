//import SwiftUI
//
//struct ProfileView: View {
//    var profileList = ["Plateformes", "Favoris", "Historique", "Contact", "Nous soutenir"]
//    var body: some View {
//        ScrollView {
//            VStack (alignment: .leading) {
//                Spacer().frame(height: 40)
//                Text("Vous etés dans")
//                    .foregroundStyle(Color(.text))
//                    .font(.system(size: 13))
//                Spacer().frame(height: 10)
//                Text("Vos parameters")
//                    .foregroundStyle(.white)
//                    .font(.system(size: 30))
//                Spacer().frame(height: 40)
//                HStack(spacing: 15) {
//                    Circle()
//                        .stroke(Color(.accent), lineWidth: 1)
//                        .frame(width: 80, height: 80)
//                    VStack(alignment: .leading, spacing: 5) {
//                        Text("Charles Ayomide")
//                            .bold()
//                            .font(.system(size: 16))
//                        Text("Nouveau")
//                            .foregroundStyle(Color(.text))
//                            .font(.system(size: 14))
//                    }
//                }
//                Spacer().frame(height: 30)
//                VStack(spacing: 0) {
//                    ForEach(profileList, id: \.description) { profile in
//                        HStack(spacing: 32) {
//                            Image(systemName: "house.fill")
//                                .frame(width: 20)
//                                .foregroundStyle(.accent)
//                            Text(profile)
//                                .font(.system(size: 16))
//                            Spacer()
//                        }
//                        .padding(.vertical, 25)
//                        Divider()
//                            .background(Color(.background))
//                    }
//                }        }
//            .padding()
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
//            .background(Color(.background2))
//            .foregroundStyle(.white)
//            .toolbar(.hidden, for: .tabBar)
//        }
//        Button("Hello"){}
//            .buttonStyle(.bordered)
//        
//    }
//}
//
//#Preview {
//    ProfileView()
//}



import SwiftUI

struct ProfileView: View {
    var profileList = ["Plateformes", "Favoris", "Historique", "Contact", "Nous soutenir"]
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Spacer().frame(height: 20)
                Text("Vous etés dans")
                    .foregroundStyle(Color(.text))
                    .font(.system(size: 13))
                Spacer().frame(height: 10)
                Text("Vos parameters")
                    .foregroundStyle(.white)
                    .font(.system(size: 30))
                Spacer().frame(height: 40)
                HStack(spacing: 15) {
                    Circle()
                        .stroke(Color(.accent), lineWidth: 1)
                        .frame(width: 80, height: 80)
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Charles Ayomide")
                            .bold()
                            .font(.system(size: 16))
                        Text("Nouveau")
                            .foregroundStyle(Color(.text))
                            .font(.system(size: 14))
                    }
                }
                Spacer().frame(height: 30)
                VStack(spacing: 0) {
                    ForEach(profileList, id: \.description) { profile in
                        HStack(spacing: 32) {
                            Image(systemName: "house.fill")
                                .frame(width: 20)
                                .foregroundStyle(.accent)
                            Text(profile)
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
                        Text("Se déconnecter")
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
