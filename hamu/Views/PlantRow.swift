//
//  PlantRow.swift
//  PlantRow
//
//  Created by Caitlin Dyas on 24/09/21.
//

import Foundation
import SwiftUI

struct PlantRow: View {
    var plant: Plant
    var body: some View {
        HStack{
            plant.image
                .resizable()
                .frame(width: 60, height: 60)
            VStack{
                Text(plant.latinName)
                    .italic()
                Text(plant.maoriNames)
                Text(plant.englishNames)
            }
        }
        .frame(width: 300, height: 70, alignment: .leading)
    }
}

struct PlantRow_Previews: PreviewProvider {
    static var plants = ModelData().plants
    
    static var previews: some View {
        Group {
            PlantRow(plant: plants[0])
            PlantRow(plant: plants[1])
            PlantRow(plant: plants[3])
            PlantRow(plant: plants[4])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
