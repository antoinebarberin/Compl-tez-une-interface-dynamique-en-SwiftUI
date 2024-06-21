//
//  SpiceLevelView.swift
//  TajMahal
//
//  Created by Antoine Barberin on 21/06/2024.
//

import SwiftUI

struct spiceLevelView: View {
    var level: SpiceLevel
    var body: some View{
    HStack {
        switch level {
        case .light:
            Image(systemName: "flame.fill")
                .foregroundColor(.customRed)
            Image(systemName: "flame.fill")
                .foregroundColor(.gray)
            Image(systemName: "flame.fill")
                .foregroundColor(.gray)
        case .medium:
            Image(systemName: "flame.fill")
                .foregroundColor(.customRed)
            Image(systemName: "flame.fill")
                .foregroundColor(.customRed)
            Image(systemName: "flame.fill")
                .foregroundColor(.gray)
        case .hot:
            Image(systemName: "flame.fill")
                .foregroundColor(.customRed)
            Image(systemName: "flame.fill")
                .foregroundColor(.customRed)
            Image(systemName: "flame.fill")
                .foregroundColor(.customRed)
        }
        }
    }
}

#Preview {
    spiceLevelView(level: .light)
}
