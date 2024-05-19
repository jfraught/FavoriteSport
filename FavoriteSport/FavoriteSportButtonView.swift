//
//  FavoriteSportButtonView.swift
//  FavoriteSport
//
//  Created by Jordan Fraughton on 5/17/24.
//

import SwiftUI

struct FavoriteSportButtonView: View {
    var sport: Sport 
    @Binding var favoriteSport: Sport
    @Binding var favoriteSportSubmitted: Bool
    
    var body: some View {
        Button {
            favoriteSport = sport
            favoriteSportSubmitted = false
        } label: {
            Text(sport.rawValue.capitalized)
        }
        .frame(width: 100, height: 100)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(.green)
        )
        .opacity(favoriteSport == sport ? 1.0 : 0.6)
    }
}
