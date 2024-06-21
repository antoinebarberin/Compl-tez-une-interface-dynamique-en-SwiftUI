//
//  DishDetailView.swift
//  TajMahal
//
//  Created by Antoine Barberin on 21/06/2024.
//

import SwiftUI

struct DishDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let dish: Dish

    var body: some View {
        VStack {
            ZStack{
                Image(dish.imageName)
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(width: 335, height: 467)
                    .padding()
                SpiceLevelView(spiceLevel: dish.spiceLevel)
                    .offset(x: 120, y: -210)
            }
            
            List {
                Section(header: Text("Allergènes:")) {
                    Text(dish.allergens)
                        .foregroundStyle(.gray)
                        .font(.system(size: 12))
                }
                Section(header: Text("Ingrédients:")) {
                    Text(dish.ingredients)
                        .foregroundStyle(.gray)
                        .font(.system(size: 12))
                }
            }.listStyle(PlainListStyle())
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .principal) {
                            HStack {
                                Text(dish.name)
                                    .font(.headline)
                                Spacer()  // Pousse le titre à gauche
                            }
                        }
            ToolbarItem(placement: .navigationBarLeading){
                Button(action: {
                                    presentationMode.wrappedValue.dismiss()  // Revenir en arrière
                                }) {
                                    Image(systemName: "chevron.left")
                                        .foregroundColor(.gray)
                                }
            }
        }
    }
}

struct SpiceLevelView: View{
    var spiceLevel: SpiceLevel
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 11)
                .foregroundColor(.white)
                .frame(width: 74, height: 22)
            Text("Spice level")
                .font(.system(size: 12))
        }
    }
}
#Preview {
    DishDetailView(dish: Dish(id: 0, name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Samosas", price: "5,00€"))
}
