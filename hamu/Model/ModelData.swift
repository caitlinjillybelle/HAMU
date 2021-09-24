//
//  ModelData.swift
//  ModelData
//
//  Created by Caitlin Dyas on 24/09/21.
//

import Foundation
import Combine

// Declare a model type that conforms to the ObservableObject protocol from the Combine framework:
final class ModelData: ObservableObject {
    // Landmarks Array
    @Published var plants: [Plant] = load("plantData.json")
}
//var plants: [Plant] = load(plantData.json)

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
