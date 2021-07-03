//
//  PhysicsCategory.swift
//  jv3
//
//  Created by Benjamin Breton on 21/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import SpriteKit
import GameplayKit
struct PhysicsCategory {
    static let none      : UInt32 = 0
    static let all       : UInt32 = UInt32.max
    static let monster   : UInt32 = 0b1
    static let fragileWall: UInt32 = 0b10
    static let character: UInt32 = 0b100
    static let gift: UInt32 = 0b1000
    static let gate: UInt32 = 0b10000
    static let gun: UInt32 = 0b100000
    static let bullet: UInt32 = 0b1000000
    static let teleporter: UInt32 = 0b10000000
}
