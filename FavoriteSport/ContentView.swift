//
//  ContentView.swift
//  FavoriteSport
//
//  Created by Jordan Fraughton on 5/15/24.
//

import SwiftUI

enum Sport: String {
    case golf, football, soccer, baseball
}

struct ContentView: View {
    @State var favoriteSport: Sport = .golf
    @State var favoriteSportSubmitted = false
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Favorite Sport")
                    .font(.largeTitle)
                Spacer()
                HStack {
                    FavoriteSportButtonView(
                        sport: .golf,
                        favoriteSport: $favoriteSport,
                        favoriteSportSubmitted: $favoriteSportSubmitted
                    )
                    FavoriteSportButtonView(
                        sport: .football,
                        favoriteSport: $favoriteSport,
                        favoriteSportSubmitted: $favoriteSportSubmitted
                    )
                }
                HStack {
                    FavoriteSportButtonView(
                        sport: .soccer,
                        favoriteSport: $favoriteSport,
                        favoriteSportSubmitted: $favoriteSportSubmitted
                    )
                    FavoriteSportButtonView(
                        sport: .baseball,
                        favoriteSport: $favoriteSport,
                        favoriteSportSubmitted: $favoriteSportSubmitted
                    )
                }
                Spacer()
                Button {
                    favoriteSportSubmitted = true
                } label: {
                    Text("Submit")
                        .padding()
                        .frame(width: 300)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.blue)
                        )
                }
                if favoriteSportSubmitted {
                    Text("You chose \(favoriteSport.rawValue)")
                }
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    ContentView()
}
