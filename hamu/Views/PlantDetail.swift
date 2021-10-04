//
//  PlantDetail.swift
//  PlantDetail
//
//  Created by Caitlin Dyas on 24/09/21.
//

import SwiftUI

struct PlantDetail: View {
    var plant: Plant
    
    var body: some View {
        ScrollView {
            Text("HAMU")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Divider()
            PlantImage(image: plant.image)
//                .frame(width: 200, height: 200, alignment: .center)
                .padding()
            HStack {
                VStack{
                    Text("NAMES:")
                        .font(.body)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    HStack{
                        Text(plant.latinName)
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
//                        Text("Latin Name")
//                            .font(.subheadline)
//                            .multilineTextAlignment(.leading)
                    }
                    HStack{
                        Text(plant.maoriNames)
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
//                        Text("Maori Name")
//                            .font(.subheadline)
//                            .multilineTextAlignment(.leading)
                    }
                    HStack{
                        Text(plant.englishNames)
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
//                        Text("English Name")
//                            .font(.subheadline)
//                            .multilineTextAlignment(.leading)
                    }
                }
            }
            Divider()
            VStack(alignment: .leading){
                Text("USES:")
                    .font(.body)
                    .fontWeight(.semibold)
                HStack{
                    VStack(alignment: .leading){
                        Text("Medicinal:")
                            .font(.body)
                            .fontWeight(.semibold)
                        Text(plant.medicinalDescription)
                    }
                }
                HStack{
                    VStack(alignment: .leading){
                        Text("Edible:")
                            .font(.body)
                            .fontWeight(.semibold)
                        Text(plant.edibleDescription)
                    }
                }
            }.padding()
        }
    }
}

struct PlantDetail_Previews: PreviewProvider {
    static var plants = ModelData().plants
    static var previews: some View {
        PlantDetail(plant: plants[1])
    }
}
