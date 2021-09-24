//
//  plantView.swift
//  plantView
//
//  Created by Caitlin Dyas on 23/09/21.
//

import SwiftUI

struct PlantImage: View {
    var body: some View {
        Image("Acaena_anserinifolia")
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
            
        
    }
}

struct PlantImage_Previews: PreviewProvider {
    static var previews: some View {
        PlantImage()
    }
}
