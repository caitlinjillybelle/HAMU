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
            Divider()
            PlantImage()
                .frame(width: 200, height: 200, alignment: .center)
            HStack {
                VStack{
                    Text("NAMES:")
                        .font(.body)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    HStack{
                        Text("Latin")
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                        Text("Latin Name")
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                    }
                    HStack{
                        Text("Maori")
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                        Text("Maori Name")
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                    }
                    HStack{
                        Text("English")
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                        Text("English Name")
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                    }
                }
            }
            Divider()
            VStack{
                Text("USES:")
                    .font(.body)
                    .fontWeight(.semibold)
                HStack{
                    VStack(alignment: .leading){
                        Text("Medicinal:")
                            .font(.body)
                            .fontWeight(.semibold)
                        Text("ADD LATER asd fs d f a s df   s  d  s dfs df sd f s dfs df a sdf a s d f a sdf a s d f asd fa sd fs ad f a sdfa sdf")
                    }
                    Text("[Guide]")
                }.padding()
                HStack{
                    VStack(alignment: .leading){
                        Text("Edible:")
                            .font(.body)
                            .fontWeight(.semibold)
                        Text("ADD LATER asdfsd fasdfsdfsd fsd fsd fsd fsdf sdfasdfasdfasdfasdfasdfasdfsadfasdfasdf")
                    }
                    Text("[Guide]")
                }.padding()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
