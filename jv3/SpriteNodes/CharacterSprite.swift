//
//  CharacterSprite.swift
//  jv3
//
//  Created by Benjamin Breton on 21/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import SpriteKit
import GameplayKit
class CharacterSprite: Sprite {
    var timer: Timer?
    var jumpTimes = 0
    var lastMove: Movement = .none
    var lastJumping: Bool = false
    var isJumping: Bool = false {
        willSet {
            lastJumping = isJumping
        }
        didSet {
            if lastJumping == false && isJumping {
                physicsBody?.affectedByGravity = false
                let jump = SKAction.move(by: CGVector(dx: 0, dy: size.height * 2), duration: 0.0025 * Double(size.height) * 2)
                run(jump, completion: {
                    self.isJumping = false
                    self.physicsBody?.affectedByGravity = true
                })
            }
            
        }
    }
    var move: Movement = .none {
        willSet {
            lastMove = move
        }
        didSet {
            if move == .none {
                removeAction(forKey: "characterAppearance")
                removeAction(forKey: "characterMove")
                texture = lastMove == .right ? SKTexture(imageNamed: "character_right") : SKTexture(imageNamed: "character_left")
                
            } else {
                var textures: [SKTexture] = []
                textures.append(SKTexture(imageNamed: "\(move.characterImage)_walk1"))
                textures.append(SKTexture(imageNamed: "\(move.characterImage)"))
                textures.append(SKTexture(imageNamed: "\(move.characterImage)_walk2"))
                textures.append(SKTexture(imageNamed: "\(move.characterImage)"))
                let changePic: SKAction = SKAction.animate(with: textures, timePerFrame: 0.2)
                let action = SKAction.repeatForever(changePic)
                run(action, withKey: "characterAppearance")
                let moveAction = SKAction.move(by: CGVector(dx: move.value, dy: 0), duration: 0.005)
                let moveRepeat = SKAction.repeatForever(moveAction)
                run(moveRepeat, withKey: "characterMove")
            }
        }
    }
    init(_ positionX: CGFloat, _ positionY: CGFloat, block: Block) {

        super.init(positionX: positionX, positionY: positionY, imageNamed: "character_right", radialPhysic: true, isDynamic: true, velocity: CGVector(dx: 1, dy: 1), allowsRotation: false, block: block, multiSize: nil)
        //timer = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(movement), userInfo: nil, repeats: true)
        physicsBody?.categoryBitMask = PhysicsCategory.character
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("Fatal error")
    }
    @objc func movement() {
        
        //if let verifiedMove = move {
        let xValue: CGFloat
        if move != .none {
            /*
            if imageNumber == 1 {
                imageNumber = 2
            } else {
                imageNumber = 1
            }
 */
            xValue = move.value
        } else {
            xValue = 0
        }
        
        //let previousY = position.y
        let move: SKAction
        
        if jumpTimes > 0 {
            physicsBody?.affectedByGravity = false
            move = SKAction.moveBy(x: xValue, y: 2, duration: 0.005)
            jumpTimes -= 1
            
            
        } else {
            physicsBody?.affectedByGravity = true
            move = SKAction.moveBy(x: xValue, y: 0, duration: 0.005)
        }
        run(move)
        
        //}
    }
    func stopMoving() {
        move = .none
    }
    func jump() {
        if jumpTimes == 0 {
            jumpTimes = 48
        }
    }

}
