//
//  SwitchSprite.swift
//  jv3
//
//  Created by Benjamin Breton on 24/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import SpriteKit
import GameplayKit
class SwitchSprite: Sprite {
    var gate: GateSprite? = nil
    var isOn: Bool {
        return nodesOnSwitch.count > 0
    }
    var nodesOnSwitch: [SKPhysicsBody] = [] {
        didSet {
            if nodesOnSwitch.count > 0 {
                turnOn()
            } else {
                turnOff()
            }
        }
    }
    init(_ positionX: CGFloat, _ positionY: CGFloat, block: Block) {
        super.init(positionX: positionX, positionY: positionY, imageNamed: "switchOff", radialPhysic: false, isDynamic: false, velocity: .zero, allowsRotation: false, block: block, multiSize: nil)
        physicsBody?.categoryBitMask = PhysicsCategory.gate
        physicsBody?.contactTestBitMask = PhysicsCategory.character
        physicsBody?.collisionBitMask = PhysicsCategory.character
    }
    
    private func turnOn() {
        let texture = SKTexture(imageNamed: "switchOn")
        self.texture = texture
        size = texture.size()
        if let gate = self.gate {
            gate.open {
                return
            }
        }
        
    }
    private func turnOff() {
        let texture = SKTexture(imageNamed: "switchOff")
        self.texture = texture
        size = texture.size()
        if let gate = self.gate {
            gate.close {
                return
            }
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
