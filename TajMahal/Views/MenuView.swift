//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        VStack{
            Text("Menu")
                .font(.title)
            VStack (alignment: .leading){
                Text("Entrées")
                    .padding(.leading, 20)
                    .font(.title)
                List(viewModel.apetizerArray) { dish in
                    LineDishView(dish: dish)
                }
                .padding()
                Text("Plats principaux")
                    .padding(.leading, 20)
                    .font(.title)
                List(viewModel.mainCourseArray) { dish in
                    LineDishView(dish: dish)
                }
            }
        }
    }
}


//Structure d'une ligne du menu

struct LineDishView: View {
    var dish: Dish
    
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 335, height: 110)
                .foregroundColor(.white)
            HStack{
                Image(dish.imageName)
                    .resizable()
                    .frame(width: 128, height: 86)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .aspectRatio(contentMode: .fill)
                Spacer()
                VStack(alignment: .leading, spacing: 10){
                    Text(dish.name)
                        .font(.headline)
                    Text(dish.description)
                        .font(.system(size: 12))
                        .foregroundStyle(.gray)
                    HStack{
                        Text("Price")
                            .font(.subheadline)
                        Spacer()
                        Text("Spice level")
                            .font(.subheadline)
                    }
                }
            }
            .padding()
        }
    }
}
#Preview {
    MenuView()
}
