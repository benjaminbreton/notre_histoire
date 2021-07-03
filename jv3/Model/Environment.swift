//
//  Environment.swift
//  jv3
//
//  Created by Benjamin Breton on 01/09/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
enum Environment {
    case city, garden, castle, beach, forest
    var wall: String {
        return generateName("wall")
    }
    var fragilewall: String {
        return generateName("fragilewall")
    }
    var ground: String {
        return generateName("ground")
    }
    var underground: String {
        return generateName("underground")
    }
    var background: String {
        return generateName("background")
    }
    
    private func generateName(_ blockType: String) -> String {
        switch self {
        case .city:
            return "city_\(blockType)"
        case .garden:
            return "garden_\(blockType)"
        case .castle:
            return "castle_\(blockType)"
        case .beach:
            return "beach_\(blockType)"
        case .forest:
            return "forest_\(blockType)"
        }
    }
    
}
