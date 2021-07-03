//
//  Block.swift
//  jv3
//
//  Created by Benjamin Breton on 22/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
class Block {
    let type: BlockType
    let gift: Bool
    let monsterMoves: Int?
    init(type: BlockType, gift: Bool, monsterMoves: Int?) {
        self.type = type
        self.gift = gift
        self.monsterMoves = monsterMoves
    }
}
class WallBlock: Block {
    init() {
        super.init(type: .wall, gift: false, monsterMoves: nil)
    }
}
class FragileWallBlock: Block {
    init(gift: Bool) {
        super.init(type: .fragileWall, gift: gift, monsterMoves: nil)
    }
}
class MonsterBlock: Block {
    init(gift: Bool, moves: Int) {
        super.init(type: .monster, gift: gift, monsterMoves: moves)
    }
}
class BossMonsterBlock: Block {
    init() {
        super.init(type: .monster, gift: true, monsterMoves: nil)
    }
}
class CharacterBlock: Block {
    init() {
        super.init(type: .character, gift: false, monsterMoves: nil)
    }
}
class GateBlock: Block {
    let giftNumber: Int
    let switchNumber: Int
    init(giftNumber: Int, switchNumber: Int) {
        self.giftNumber = giftNumber
        self.switchNumber = switchNumber
        super.init(type: .gate, gift: false, monsterMoves: nil)
    }
}
class SwitchBlock: Block {
    let switchNumber: Int
    init(_ switchNumber: Int) {
        self.switchNumber = switchNumber
        super.init(type: .switchGate, gift: false, monsterMoves: nil)
    }
}
class BallBlock: Block {
    init() {
        super.init(type: .ball, gift: false, monsterMoves: nil)
    }
}
class GunBlock: Block {
    let isRightOriented: Bool
    let fireInterval: TimeInterval
    init(isRightOriented: Bool, fireInterval: TimeInterval) {
        self.isRightOriented = isRightOriented
        self.fireInterval = fireInterval
        super.init(type: .gun, gift: false, monsterMoves: nil)
    }
}
class LeftGunBlock: GunBlock {
    init(_ fireInterval: TimeInterval) {
        super.init(isRightOriented: false, fireInterval: fireInterval)
    }
}
class RightGunBlock: GunBlock {
    init(_ fireInterval: TimeInterval) {
        super.init(isRightOriented: true, fireInterval: fireInterval)
    }
}
class TeleporterBlock: Block {
    let isOpen: Bool
    let index: Int
    init(_ isOpen: Bool, _ index: Int) {
        self.isOpen = isOpen
        self.index = index
        super.init(type: .teleporter, gift: false, monsterMoves: nil)
    }
}
class OpenTeleporterBlock: TeleporterBlock {
    init(_ index: Int) {
        super.init(true, index)
    }
}
class ClosedTeleporterBlock: TeleporterBlock {
    init(_ index: Int) {
        super.init(false, index)
    }
}
class CharacterEndBlock: Block {
    let isRightOriented: Bool
    init(isRightOriented: Bool) {
        self.isRightOriented = isRightOriented
        super.init(type: .characterEnd, gift: false, monsterMoves: nil)
    }
}
