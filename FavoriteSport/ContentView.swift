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
    
    func updateFavoriteSport(with sport: Sport) {
        favoriteSport = sport
        favoriteSportSubmitted = false
    }
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Favorite Sport")
                    .font(.largeTitle)
                Spacer()
                HStack {
                    Button {
                        updateFavoriteSport(with: .golf)
                    } label: {
                        Text("Golf")
                    }
                    .frame(width: 100, height: 100)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.green)
                    
                    )
                    .opacity(favoriteSport == .golf ? 1.0 : 0.6)
                    
                    Button {
                        updateFavoriteSport(with: .football)
                    } label: {
                        Text("Football")
                            .frame(width: 100, height: 100)
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(.green)
                            )
                            .opacity(favoriteSport == .football ? 1.0 : 0.6)
                    }
                }
                HStack {
                    Button {
                        updateFavoriteSport(with: .soccer)
                    } label: {
                        Text("Soccer")
                    }
                    .frame(width: 100, height: 100)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.green)
                    )
                    .opacity(favoriteSport == .soccer ? 1.0 : 0.6)
                    
                    Button {
                        updateFavoriteSport(with: .baseball)
                    } label: {
                        Text("Baseball")
                            .frame(width: 100, height: 100)
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(.green)
                            )
                            .opacity(favoriteSport == .baseball ? 1.0 : 0.6)
                    }
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
