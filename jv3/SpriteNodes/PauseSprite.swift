//
//  PauseSprite.swift
//  jv3
//
//  Created by Benjamin Breton on 01/09/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import SpriteKit
import GameplayKit
class PauseSprite: Sprite {
    init() {
        super.init(positionX: 0, positionY: 0, imageNamed: "pause", radialPhysic: false, isDynamic: false, velocity: .zero, allowsRotation: false, block: nil, multiSize: nil)
        zPosition = 5
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
