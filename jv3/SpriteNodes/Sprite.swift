//
//  Sprite.swift
//  jv3
//
//  Created by Benjamin Breton on 21/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import SpriteKit
import GameplayKit
class Sprite: SKSpriteNode {
    let blockPositionX: CGFloat
    let blockPositionY: CGFloat
    let block: Block?
    init(positionX: CGFloat, positionY: CGFloat, imageNamed: String, radialPhysic: Bool, isDynamic: Bool, velocity: CGVector, allowsRotation: Bool, block: Block?, multiSize: CGFloat?) {
        blockPositionX = positionX
        blockPositionY = positionY
        self.block = block
        let texture = SKTexture(imageNamed: imageNamed)
        super.init(texture: texture, color: SKColor.clear, size: texture.size())
        let multi: CGFloat = multiSize == nil ? 1 : multiSize!
        position = CGPoint(
            x: positionX * size.width * multi + size.width * multi / 2,
            y: positionY * size.height * multi + size.height * multi / 2)
        if radialPhysic {
            physicsBody = SKPhysicsBody(circleOfRadius: size.width/2)
        } else {
            physicsBody = SKPhysicsBody(rectangleOf: size)
        }
        physicsBody?.isDynamic = isDynamic
        physicsBody?.velocity = velocity
        physicsBody?.allowsRotation = allowsRotation
    }
    

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
