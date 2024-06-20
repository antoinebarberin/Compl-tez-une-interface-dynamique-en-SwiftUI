//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack(){
                Image("TajMahal")
                    .resizable()
                    .frame(width: 335, height: 423)
                    .padding(.bottom, 26)
                DescrptionView()
                    .padding(.bottom, 26)
                LineView(iconeName: "clock", texte1: "Mardi", texte2: "11h30 - 14h30 . 18h30 - 22h 00")
                    .padding(.bottom, 10)
                LineView(iconeName: "takeoutbag.and.cup.and.straw", texte1: "Type de Service", texte2: "A emporter")
                    .padding(.bottom, 10)
                LineView(iconeName: "pin", texte1: "12 avenue de la brique-75010 Paris", texte2: "")
                    .padding(.bottom, 10)
                LineView(iconeName: "globe", texte1: "www.tajmahal.fr", texte2: "")
                    .padding(.bottom, 10)
                LineView(iconeName: "phone", texte1: "0612345678", texte2: "")
                    .padding(.bottom, 26)
                NavigationLink {
                    MenuView()
                } label : {
                    MenuButton(text: "Accéder au menu")
                        
                }
            }
        }
    }
}

#Preview {
    WelcomeView()
}
