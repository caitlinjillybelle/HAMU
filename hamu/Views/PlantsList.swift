//
//  PlantsList.swift
//  PlantsList
//
//  Created by Caitlin Dyas on 24/09/21.
//

import SwiftUI

struct PlantsList: View {
    var plants = ModelData().plants
    var body: some View {
        NavigationView {
            List(plants) { plant in
                NavigationLink(destination: PlantDetail(plant: plant)) {
                PlantRow(plant: plant)
                }
            }
            .navigationTitle("Plants")
        }
    }
}

struct PlantsList_Previews: PreviewProvider {
    static var previews: some View {
        PlantsList()
    }
}
