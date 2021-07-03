//
//  FragileWallSprite.swift
//  jv3
//
//  Created by Benjamin Breton on 21/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import SpriteKit
import GameplayKit
class FragileWallSprite: Sprite {
    init(_ positionX: CGFloat, _ positionY: CGFloat, block: Block) {
        let environment = Game.levels[Game.levelInProgress].environment
        super.init(positionX: positionX, positionY: positionY, imageNamed: environment.fragilewall, radialPhysic: false, isDynamic: false, velocity: .zero, allowsRotation: false, block: block, multiSize: nil)
        physicsBody?.categoryBitMask = PhysicsCategory.fragileWall
        physicsBody?.contactTestBitMask = PhysicsCategory.character
        physicsBody?.collisionBitMask = PhysicsCategory.character
    }
    
    func destruction() {
        removeFromParent()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
