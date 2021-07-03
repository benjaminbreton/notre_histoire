//
//  HeartSprite.swift
//  jv3
//
//  Created by Benjamin Breton on 29/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit
class HeartSprite: Sprite {
    init(_ characterEnd: CharacterEndSprite) {
        let characterEndBlock: CharacterEndBlock
        if let block = characterEnd.block as? CharacterEndBlock {
            characterEndBlock = block
        } else {
            characterEndBlock = CharacterEndBlock(isRightOriented: true)
        }
        super.init(positionX: characterEndBlock.isRightOriented ? characterEnd.blockPositionX + 0.5 : characterEnd.blockPositionX - 0.5, positionY: characterEnd.blockPositionY + 1, imageNamed: "ball", radialPhysic: false, isDynamic: true, velocity: CGVector(dx: 1, dy: 1), allowsRotation: false, block: nil, multiSize: nil)
        guard let image = "♥️".inImage() else { return }
        
        let texture = SKTexture(image: image)
        self.texture = texture
        zPosition = -1
        physicsBody?.affectedByGravity = false
    }
    func move() {
        
        let moveR = SKAction.move(by: CGVector(dx: 10, dy: 10), duration: 0.5)
        let moveL = SKAction.move(by: CGVector(dx: -10, dy: 10), duration: 0.5)
        let sequence = SKAction.sequence([moveR, moveL])
        let action = SKAction.repeatForever(sequence)
        run(action, withKey: "heart")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
