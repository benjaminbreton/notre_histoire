//
//  TeleporterSprite.swift
//  jv3
//
//  Created by Benjamin Breton on 27/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import SpriteKit
import GameplayKit
class TeleporterSprite: Sprite {
    var closeTeleporterPosition: CGPoint? = nil
    var destinationPosition: CGPoint {
        return CGPoint(x: position.x, y: position.y + size.height)
    }
    init(_ positionX: CGFloat, _ positionY: CGFloat, teleporterBlock: TeleporterBlock) {
        let block = teleporterBlock as Block
        super.init(positionX: positionX, positionY: positionY, imageNamed: teleporterBlock.isOpen ? "teleporter_open" : "teleporter_close", radialPhysic: false, isDynamic: false, velocity: .zero, allowsRotation: false, block: block, multiSize: nil)
        physicsBody?.categoryBitMask = PhysicsCategory.teleporter
        physicsBody?.contactTestBitMask = PhysicsCategory.character
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

