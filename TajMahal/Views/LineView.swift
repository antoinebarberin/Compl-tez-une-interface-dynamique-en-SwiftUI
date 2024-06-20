//
//  LineView.swift
//  TajMahal
//
//  Created by Antoine Barberin on 20/06/2024.
//

import SwiftUI

struct LineView: View {
    var iconeName: String
    var texte1: String
    var texte2: String
    
    var body: some View {
        
        HStack{
            Image(systemName: iconeName)
                .resizable()
                .frame(width: 12, height: 12)
            Text(texte1)
                .font(.system(size: 12))
            Spacer()
            Text(texte2)
                .font(.system(size: 12))
        }
        .frame(width: 335, height: 15)
        .padding(.leading, 18)
        .padding(.trailing, 18)
    }
}

#Preview {
    LineView(iconeName: "house", texte1: "texte1", texte2: "Texte2")
}
