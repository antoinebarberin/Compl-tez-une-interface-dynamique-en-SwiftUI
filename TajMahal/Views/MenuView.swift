//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI


struct MenuView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.systemGray6).ignoresSafeArea()
                VStack{
                    Text("Menu")
                        .font(.largeTitle)
                    List {
                        Section(header: Text("Entrées")) {
                            ForEach(viewModel.apetizerArray) { dish in
                                NavigationLink{
                                    DishDetailView(dish: dish)
                                }label : {
                                    LineDishView(dish: dish)
                                        .listRowBackground(Color.clear)
                                }
                            }
                        }
                        
                        Section(header: Text("Plats principaux")) {
                            ForEach(viewModel.mainCourseArray) { dish in
                                NavigationLink{
                                    DishDetailView(dish: dish)
                                }label : {
                                    LineDishView(dish: dish)
                                        .listRowBackground(Color.clear) // Rendre les cellules transparentes pour voir la couleur de fond
                                }
                            }
                        }
                    }
                    .listStyle(PlainListStyle()) // Style de liste simple sans séparateurs
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar{
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
                        Text(dish.price)
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
