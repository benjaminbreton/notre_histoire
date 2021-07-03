//
//  WallSprite.swift
//  jv3
//
//  Created by Benjamin Breton on 21/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import SpriteKit
import GameplayKit
/*
class WallSprite: SKSpriteNode {
    init(_ positionX: CGFloat, _ positionY: CGFloat) {
        let texture = SKTexture(imageNamed: "wall")
        super.init(texture: texture, color: SKColor.clear, size: texture.size())
        position = CGPoint(
            x: positionX * size.width + size.width / 2,
            y: positionY * size.height + size.height / 2)
        physicsBody = SKPhysicsBody(rectangleOf: size)
        physicsBody?.isDynamic = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
 */

class WallSprite: Sprite {
    init(_ positionX: CGFloat, _ positionY: CGFloat, block: Block) {
        let environment = Game.levels[Game.levelInProgress].environment
        let imageNamed: String
        if positionY == 0 {
            imageNamed = environment.ground
        } else if positionY < 0 {
            imageNamed = environment.underground
        } else {
            imageNamed = environment.wall
        }
        super.init(positionX: positionX, positionY: positionY, imageNamed: imageNamed, radialPhysic: false, isDynamic: false, velocity: .zero, allowsRotation: false, block: nil, multiSize: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
