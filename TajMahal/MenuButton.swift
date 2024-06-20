//
//  MenuButton.swift
//  TajMahal
//
//  Created by Antoine Barberin on 20/06/2024.
//

import SwiftUI

struct MenuButton: View {
    var text: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 335, height: 40)
                .foregroundColor(.customRed)
            Text(text)
                .foregroundStyle(.white)
                .font(.system(size: 16))
        }
    }
}

#Preview {
    MenuButton(text: "Menu")
}
