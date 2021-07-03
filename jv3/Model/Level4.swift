//
//  Level4.swift
//  jv3
//
//  Created by Benjamin Breton on 02/09/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
class Level4: Level {
    init() {
        // Level 4
        let wall = WallBlock()
        let character = CharacterBlock()
        let giftedFragileWall = FragileWallBlock(gift: true)
        let nonGiftedFragileWall = FragileWallBlock(gift: false)
        let ball = BallBlock()
        
        var wallPositions: [Int] = []
        var characterPosition: [Int] = []
        var ballPositions: [Int] = []
        var nonGiftedFragileWallPositions: [Int] = []
        var giftedFragileWallPositions: [Int] = []
        var lineBlocks: [Block] = []
        var lineBlocksPositions: [[Int]] = []
        
        let levelLength = 64
        var levelLines: [BlockLine] = []
        
        // line 0
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 27)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 37, positionMax: 63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line0 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line0)
        // line 1
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        let characterEnd = CharacterEndBlock(isRightOriented: true)
        lineBlocks.append(characterEnd)
        lineBlocksPositions.append([1])
        let gate993 = GateBlock(giftNumber: 0, switchNumber: 0)
        lineBlocks.append(gate993)
        lineBlocksPositions.append([3])
        characterPosition.append(5)
        wallPositions.append(9)
        let switch9910 = SwitchBlock(0)
        lineBlocks.append(switch9910)
        lineBlocksPositions.append([10])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 11, positionMax: 15)
        let monster9919 = MonsterBlock(gift: false, moves: 3)
        lineBlocks.append(monster9919)
        lineBlocksPositions.append([19])
        let monster9925 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9925)
        lineBlocksPositions.append([25])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 31, positionMax: 33)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 37, positionMax: 39)
        let gate9950 = GateBlock(giftNumber: 1, switchNumber: 0)
        lineBlocks.append(gate9950)
        lineBlocksPositions.append([50])
        let monster9952 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9952)
        lineBlocksPositions.append([52])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 54, positionMax: 63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(character)
        lineBlocksPositions.append(characterPosition)
        let line1 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line1)
        // line 2
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions.append(3)
        wallPositions.append(9)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 12, positionMax: 18)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 28, positionMax: 29)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 35, positionMax: 38)
        wallPositions.append(50)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 54, positionMax: 63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line2 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line2)
        // line 3
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions.append(3)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 13, positionMax: 17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 36, positionMax: 37)
        wallPositions.append(50)
        giftedFragileWallPositions.append(52)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 54, positionMax: 63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
        let line3 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line3)
        // line 4
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 3)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 10, positionMax: 11)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 14, positionMax: 16)
        wallPositions.append(50)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 54, positionMax: 63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line4 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line4)
        // line 5
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 9, positionMax: 10)
        wallPositions.append(15)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 39, positionMax: 40)
        wallPositions.append(50)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 53, positionMax: 63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line5 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line5)
        // line 6
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 8, positionMax: 9)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 34, positionMax: 36)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 42, positionMax: 43)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 49, positionMax: 50)
        wallPositions.append(53)
        let gate9455 = GateBlock(giftNumber: 2, switchNumber: 0)
        lineBlocks.append(gate9455)
        lineBlocksPositions.append([55])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 60, positionMax: 63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line6 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line6)
        // line 7
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 7, positionMax: 8)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 31, positionMax: 32)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 45, positionMax: 46)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 48, positionMax: 53)
        wallPositions.append(55)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 61, positionMax: 63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line7 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line7)
        // line 8
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 6, positionMax: 7)
        giftedFragileWallPositions.append(15)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 28, positionMax: 29)
        wallPositions.append(55)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 62, positionMax: 63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
        let line8 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line8)
        // line 9
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 5, positionMax: 6)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 25, positionMax: 26)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 54, positionMax: 55)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line9 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line9)
        // line 10
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 4, positionMax: 5)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 22, positionMax: 23)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 51, positionMax: 52)
        wallPositions.append(55)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 58, positionMax: 60)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line10 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line10)
        // line 11
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 4)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 18, positionMax: 20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 50, positionMax: 51)
        wallPositions.append(55)
        let monster8959 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster8959)
        lineBlocksPositions.append([59])
        giftedFragileWallPositions.append(62)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
        let line11 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line11)
        // line 12
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 2, positionMax: 3)
        wallPositions.append(48)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 55, positionMax: 57)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line12 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line12)
        // line 13
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 2)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 44, positionMax: 46)
        wallPositions.append(55)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line13 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line13)
        // line 14
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        nonGiftedFragileWallPositions.append(19)
        wallPositions.append(55)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
        let line14 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line14)
        // line 15
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 49, positionMax: 53)
        wallPositions.append(55)
        nonGiftedFragileWallPositions.append(57)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
        let line15 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line15)
        // line 16
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 2, positionMax: 3)
        giftedFragileWallPositions.append(45)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 51, positionMax: 55)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 59, positionMax: 63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
        let line16 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line16)
        // line 17
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 4)
        wallPositions.append(55)
        wallPositions.append(59)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line17 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line17)
        // line 18
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 4, positionMax: 5)
        wallPositions.append(55)
        wallPositions.append(59)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line18 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line18)
        // line 19
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 5, positionMax: 6)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 48, positionMax: 50)
        wallPositions.append(53)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 55, positionMax: 59)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line19 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line19)
        // line 20
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 6, positionMax: 7)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line20 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line20)
        // line 21
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 7, positionMax: 8)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 44, positionMax: 46)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line21 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line21)
        // line 22
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 8, positionMax: 9)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 41, positionMax: 42)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line22 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line22)
        // line 23
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 9, positionMax: 10)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 39, positionMax: 41)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line23 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line23)
        // line 24
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 10, positionMax: 11)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line24 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line24)
        // line 25
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 11, positionMax: 12)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 36, positionMax: 38)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line25 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line25)
        // line 26
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 12, positionMax: 13)
        wallPositions.append(36)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line26 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line26)
        // line 27
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 13, positionMax: 14)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 33, positionMax: 34)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line27 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line27)
        // line 28
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 14, positionMax: 15)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 29, positionMax: 31)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line28 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line28)
        // line 29
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 15, positionMax: 27)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line29 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line29)
        // line 30
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        let gate7016 = GateBlock(giftNumber: 5, switchNumber: 0)
        lineBlocks.append(gate7016)
        lineBlocksPositions.append([16])
        ballPositions.append(19)
        let gate7022 = GateBlock(giftNumber: 5, switchNumber: 0)
        lineBlocks.append(gate7022)
        lineBlocksPositions.append([22])
        let monster7025 = MonsterBlock(gift: false, moves: 2)
        lineBlocks.append(monster7025)
        lineBlocksPositions.append([25])
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(ball)
        lineBlocksPositions.append(ballPositions)
        let line30 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line30)
        // line 31
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions.append(16)
        wallPositions.append(22)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line31 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line31)
        // line 32
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions.append(16)
        wallPositions.append(22)
        giftedFragileWallPositions.append(24)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
        let line32 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line32)
        // line 33
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions.append(16)
        wallPositions.append(22)
        wallPositions.append(63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line33 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line33)
        // line 34
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 16, positionMax: 22)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 28, positionMax: 63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line34 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line34)
        // line 35
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 22)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 28, positionMax: 63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line35 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line35)
        // line 36
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line36 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line36)
        // line 37
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line37 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line37)
        // line 38
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line38 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line38)
        // line 39
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 63)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line39 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line39)
        
        let levelProperties = CustomizableProperties.shared.levelsProperties[3]
        super.init(
            title: levelProperties.title,
            lines: levelLines,
            gifts: levelProperties.gifts,
            environment: levelProperties.environment
        )
    }
}
