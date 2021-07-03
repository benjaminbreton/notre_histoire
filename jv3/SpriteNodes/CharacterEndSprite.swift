//
//  CharacterEndSprite.swift
//  jv3
//
//  Created by Benjamin Breton on 29/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
import GameplayKit
import SpriteKit
class CharacterEndSprite: Sprite {
    init(_ positionX: CGFloat, _ positionY: CGFloat, characterBlock: CharacterEndBlock) {
        super.init(positionX: positionX, positionY: positionY, imageNamed: characterBlock.isRightOriented ? "character2_right":"character2_left", radialPhysic: true, isDynamic: false, velocity: .zero, allowsRotation: false, block: characterBlock, multiSize: nil)
        physicsBody?.categoryBitMask = PhysicsCategory.character
        physicsBody?.contactTestBitMask = PhysicsCategory.character
        physicsBody?.collisionBitMask = PhysicsCategory.character
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
