//
//  GunSprite.swift
//  jv3
//
//  Created by Benjamin Breton on 26/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import SpriteKit
import GameplayKit
class GunSprite: Sprite {
    var timer: Timer?
    var delegate: GunDelegate?
    init(_ positionX: CGFloat, _ positionY: CGFloat, gunBlock: GunBlock) {
        let block = gunBlock as Block
        super.init(positionX: positionX, positionY: positionY, imageNamed: gunBlock.isRightOriented ? "gun_right":"gun_left", radialPhysic: false, isDynamic: false, velocity: .zero, allowsRotation: false, block: block, multiSize: nil)
        physicsBody?.categoryBitMask = PhysicsCategory.gun
        physicsBody?.contactTestBitMask = PhysicsCategory.character
        
        timer = Timer.scheduledTimer(timeInterval: gunBlock.fireInterval, target: self, selector: #selector(fire), userInfo: nil, repeats: true)
    }
    
    @objc private func fire() {
        guard let characterPosition = delegate?.characterPosition() else { return }
        guard let block = self.block as? GunBlock else { return }
        let diffX = characterPosition.x - position.x
        let diffY = characterPosition.y - position.y
        let fire: Bool = (block.isRightOriented && characterPosition.x > position.x) || (block.isRightOriented == false && characterPosition.x < position.x) ? true:false
        if fire {
            let direction = CGVector(dx: diffX, dy: diffY)
            let bullet = BulletSprite(blockPositionX, blockPositionY, direction: direction, duration: Double(sqrt(Double(diffX * diffX) + Double(diffY * diffY))) * 0.005)
            delegate?.addBullet(bullet)
        }
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class BulletSprite: Sprite {
    let duration: TimeInterval
    let direction: CGVector
    init(_ positionX: CGFloat, _ positionY: CGFloat, direction: CGVector, duration: TimeInterval) {
        self.duration = duration
        self.direction = direction
        super.init(positionX: positionX, positionY: positionY, imageNamed: "bullet", radialPhysic: true, isDynamic: true, velocity: CGVector(dx: 1, dy: 1), allowsRotation: true, block: nil, multiSize: 4)
        physicsBody?.affectedByGravity = false
        physicsBody?.categoryBitMask = PhysicsCategory.bullet
        physicsBody?.contactTestBitMask = PhysicsCategory.all
    }
    func move() {
        let action = SKAction.move(by: direction, duration: duration)
        let rotation = SKAction.rotate(byAngle: 360, duration: duration)
        let sequence = SKAction.sequence([action, rotation])
        let repeatAction = SKAction.repeatForever(sequence)
        run(repeatAction)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
