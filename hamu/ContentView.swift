//
//  ContentView.swift
//  hamu
//
//  Created by Caitlin Dyas on 22/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("HAMU")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            HStack {
                Text("Main Image")
                    .frame(width: 160, height: 160, alignment: .leading)
                VStack{
                    Text("NAMES:")
                        .font(.body)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    Text("Latin")
                        .multilineTextAlignment(.leading)
                    Text("Latin Name")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    Text("Maori")
                        .multilineTextAlignment(.leading)
                    Text("Maori Name")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    Text("English")
                        .multilineTextAlignment(.leading)
                    Text("English Name")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            Text("USES:")
                .font(.body)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
            VStack{
                Text("Medicinal:")
                    .font(.body)
                    .fontWeight(.semibold)
                Text("ADD LATER")
                    .padding()
                Text("Edible:")
                    .font(.body)
                    .fontWeight(.semibold)
                Text("ADD LATER")
                    .padding()
                
            }.frame(width: 280, height: 200, alignment: .leading)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
