//
//  Movement.swift
//  jv3
//
//  Created by Benjamin Breton on 01/09/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import SpriteKit
import GameplayKit
enum Movement {
    case right, left, none
    var value: CGFloat {
        switch self {
        case .right:
            return 1
        case .left:
            return -1
        default:
            return 0
        }
    }
    var characterImage: String {
        switch self {
        case .right:
            return "character_right"
        case .left:
            return "character_left"
        default:
            return "character_right"
        }
    }
}
