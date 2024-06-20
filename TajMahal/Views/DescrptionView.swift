//
//  DescrptionView.swift
//  TajMahal
//
//  Created by Antoine Barberin on 20/06/2024.
//

import SwiftUI

struct DescrptionView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("Restaurant Indien")
                    .foregroundStyle(.gray)
                Text("Taj Mahal")
                    .bold()
                    .font(.title2)
            }
            Spacer()
            Image(.logo)
                .renderingMode(.template)
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.gray)
        }
        .frame(width: 335, height: 40)
        .padding(.leading, 20)
        .padding(.trailing, 20)
    }
}

#Preview {
    DescrptionView()
}
