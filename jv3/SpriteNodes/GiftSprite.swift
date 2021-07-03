//
//  GiftSprite.swift
//  jv3
//
//  Created by Benjamin Breton on 21/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import SpriteKit
import GameplayKit
class GiftSprite: Sprite {
    let gift: Gift
    init(_ positionX: CGFloat, _ positionY: CGFloat, gift: Gift) {
        self.gift = gift
        let environment = Game.levels[Game.levelInProgress].environment
        super.init(positionX: positionX, positionY: positionY, imageNamed: environment.wall, radialPhysic: true, isDynamic: true, velocity: .zero, allowsRotation: true, block: nil, multiSize: nil)
        if let image = gift.image.inImage() {
            let texture = SKTexture(image: image)
            self.texture = texture
        }
        physicsBody?.categoryBitMask = PhysicsCategory.gift
        physicsBody?.contactTestBitMask = PhysicsCategory.character
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
