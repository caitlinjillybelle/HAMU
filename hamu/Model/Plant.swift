//
//  Plant.swift
//  Plant
//
//  Created by Caitlin Dyas on 24/09/21.
//

import Foundation
import SwiftUI
import CoreLocation
/* Adding Codable conformance makes it easier to move data
 between the structure and a data file.
 You’ll rely on the Decodable component of the Codable protocol
 later in this section to read data from file.
 */
struct Plant: Hashable, Codable {
    var latinName: String
    var maoriNames: String
    var englishNames: String
    var id: Int
    var category: String
    var description: String
    var caution: Bool
    var isEdible: Bool
    var edibleDescription: String
    var isMedicinal: Bool
    var medicinalDescription: String
    private var imageName: String
        var image: Image {
            Image(imageName)
        }
}
