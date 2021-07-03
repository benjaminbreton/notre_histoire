//
//  GateSprite.swift
//  jv3
//
//  Created by Benjamin Breton on 24/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import SpriteKit
import GameplayKit
class GateSprite: Sprite {
    var startPositionY: CGFloat = 0
    var endPositionY: CGFloat = 0
    var isOpen = false
    init(_ positionX: CGFloat, _ positionY: CGFloat, block: Block) {
        super.init(positionX: positionX, positionY: positionY, imageNamed: "gate", radialPhysic: false, isDynamic: false, velocity: .zero, allowsRotation: false, block: block, multiSize: nil)
        startPositionY = position.y
        endPositionY = position.y + size.height
        physicsBody?.categoryBitMask = PhysicsCategory.gate
        physicsBody?.contactTestBitMask = PhysicsCategory.character
        physicsBody?.collisionBitMask = PhysicsCategory.character
        
    }
    func open(completion handler: () -> Void) {
        zPosition = -1
        let action = SKAction.move(to: CGPoint(x: position.x, y: endPositionY), duration: 1)
        //let action2 = SKAction.removeFromParent()
        //let sequence = SKAction.sequence([action, action2])
        run(action)
        isOpen = true
        handler()
    }
    func close(completion handler: () -> Void) {
        let action = SKAction.move(to: CGPoint(x: position.x, y: startPositionY), duration: 1)
        run(action)
        zPosition = 0
        isOpen = false
        handler()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
