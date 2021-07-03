//
//  MonsterSprite.swift
//  jv3
//
//  Created by Benjamin Breton on 21/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import SpriteKit
import GameplayKit
class MonsterSprite: Sprite {
    let moves: CGFloat
    init(_ positionX: CGFloat, _ positionY: CGFloat, moves: CGFloat, block: Block) {
        self.moves = moves
        let environment = Game.levels[Game.levelInProgress].environment
        super.init(positionX: positionX, positionY: positionY, imageNamed: environment.wall, radialPhysic: true, isDynamic: true, velocity: CGVector(dx: 1, dy: 1), allowsRotation: false, block: block, multiSize: nil)
        let image = "💩".inImage()
        if let verifiedImage = image {
            let texture = SKTexture(image: verifiedImage)
            self.texture = texture
        }
        physicsBody?.categoryBitMask = PhysicsCategory.monster
        physicsBody?.contactTestBitMask = PhysicsCategory.character
        physicsBody?.collisionBitMask = PhysicsCategory.character
        //move()
    }
    func move() {
        let rightMove = SKAction.move(to: CGPoint(x: position.x + moves * size.width, y: position.y), duration: 0.05 * Double(size.width * moves))
        let leftMove = SKAction.move(to: CGPoint(x: position.x - moves * size.width, y: position.y), duration: 0.05 * Double(size.width * moves))
        
        let action = SKAction.sequence([rightMove, leftMove, leftMove, rightMove])
        let sequence = SKAction.repeatForever(action)
        run(sequence)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class BossMonsterSprite: MonsterSprite {
    init(_ positionX: CGFloat, _ positionY: CGFloat, block: Block) {
        super.init(positionX, positionY, moves: 1, block: block)
        let image = "👴🏻".inImage()
        if let verifiedImage = image {
            let texture = SKTexture(image: verifiedImage)
            self.texture = texture
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
