//
//  plantView.swift
//  plantView
//
//  Created by Caitlin Dyas on 23/09/21.
//

import SwiftUI

struct PlantImage: View {
    var image: Image
   
    var body: some View {
        image
            .resizable()
            .frame(width: 300, height: 200, alignment: .center)
           .clipShape(Rectangle())
        
//            .overlay(Circle().stroke(Color.white, lineWidth: 4))
//            .shadow(radius: 7)
    }
}

struct PlantImage_Previews: PreviewProvider {
    static var previews: some View {
        PlantImage(image: Image("Aciphylla_colensoi"))
    }
}
