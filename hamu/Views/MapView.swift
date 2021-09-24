//
//  mapView.swift
//  mapView
//
//  Created by Caitlin Dyas on 23/09/21.
//

import SwiftUI
import MapKit

struct mapView: View {
    // A private state variable that holds the region information for the map:
//    You use the @State attribute to establish a source of truth for data in your app that you can modify from more than one view.
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )

    var body: some View {
        //  a Map view that takes a binding to the region.
        // By prefixing a state variable with $, you pass a binding, which is like a reference to the underlying value. When the user interacts with the map, the map updates the region value to match the part of the map that’s currently visible in the user interface.
        Map(coordinateRegion: $region)
    }
}

struct mapView_Previews: PreviewProvider {
    static var previews: some View {
        mapView()
    }
}
