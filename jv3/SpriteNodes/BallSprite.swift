//
//  BallSprite.swift
//  jv3
//
//  Created by Benjamin Breton on 24/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import SpriteKit
import GameplayKit
class BallSprite: Sprite {
    init(_ positionX: CGFloat, _ positionY: CGFloat, block: Block) {
        super.init(positionX: positionX, positionY: positionY, imageNamed: "ball", radialPhysic: true, isDynamic: true, velocity: CGVector(dx: 1, dy: 1), allowsRotation: true, block: nil, multiSize: nil)
        physicsBody?.categoryBitMask = PhysicsCategory.character
        physicsBody?.collisionBitMask = PhysicsCategory.all
        physicsBody?.mass /= 4
        physicsBody?.friction = 0
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
