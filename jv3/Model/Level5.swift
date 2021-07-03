//
//  Level5.swift
//  jv3
//
//  Created by Benjamin Breton on 03/09/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
class Level5: Level {
    init() {
        // Level 5
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
        
        let levelLength = 81
        var levelLines: [BlockLine] = []
        
        // line 0
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 80)
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
        characterPosition.append(2)
        let monster996 = MonsterBlock(gift: false, moves: 2)
        lineBlocks.append(monster996)
        lineBlocksPositions.append([6])
        wallPositions.append(9)
        let monster9917 = MonsterBlock(gift: false, moves: 6)
        lineBlocks.append(monster9917)
        lineBlocksPositions.append([17])
        let monster9930 = MonsterBlock(gift: false, moves: 6)
        lineBlocks.append(monster9930)
        lineBlocksPositions.append([30])
        let gate9941 = GateBlock(giftNumber: 0, switchNumber: 1)
        lineBlocks.append(gate9941)
        lineBlocksPositions.append([41])
        wallPositions.append(48)
        let switch9949 = SwitchBlock(2)
        lineBlocks.append(switch9949)
        lineBlocksPositions.append([49])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 50, positionMax: 54)
        let monster9965 = MonsterBlock(gift: false, moves: 6)
        lineBlocks.append(monster9965)
        lineBlocksPositions.append([65])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 73, positionMax: 76)
        let teleporter9977 = OpenTeleporterBlock(0)
        lineBlocks.append(teleporter9977)
        lineBlocksPositions.append([77])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 78, positionMax: 80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 9, positionMax: 10)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 14, positionMax: 15)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 40, positionMax: 41)
        wallPositions.append(48)
        let gate9854 = GateBlock(giftNumber: 3, switchNumber: 0)
        lineBlocks.append(gate9854)
        lineBlocksPositions.append([54])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 73, positionMax: 74)
        let gate9876 = GateBlock(giftNumber: 5, switchNumber: 0)
        lineBlocks.append(gate9876)
        lineBlocksPositions.append([76])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 78, positionMax: 80)
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
        nonGiftedFragileWallPositions.append(6)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 10, positionMax: 11)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 21, positionMax: 25)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 30, positionMax: 40)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 54, positionMax: 56)
        nonGiftedFragileWallPositions.append(57)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 58, positionMax: 59)
        giftedFragileWallPositions.append(60)
        nonGiftedFragileWallPositions = Level.addSeveralBlocks(previousArray: nonGiftedFragileWallPositions, positionMin: 61, positionMax: 72)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 73, positionMax: 74)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 76, positionMax: 78)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
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
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 11, positionMax: 12)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 16, positionMax: 17)
        let monster9623 = MonsterBlock(gift: false, moves: 2)
        lineBlocks.append(monster9623)
        lineBlocksPositions.append([23])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 29, positionMax: 30)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 38, positionMax: 39)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 55, positionMax: 56)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 61, positionMax: 62)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 72, positionMax: 73)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 76, positionMax: 77)
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 12, positionMax: 13)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 28, positionMax: 29)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 37, positionMax: 38)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 46, positionMax: 47)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 56, positionMax: 57)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 64, positionMax: 65)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 71, positionMax: 72)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 75, positionMax: 76)
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 13, positionMax: 14)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 18, positionMax: 19)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 27, positionMax: 28)
        giftedFragileWallPositions.append(32)
        nonGiftedFragileWallPositions.append(33)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 36, positionMax: 37)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 45, positionMax: 46)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 57, positionMax: 58)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 70, positionMax: 71)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 74, positionMax: 75)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 14, positionMax: 15)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 21, positionMax: 22)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 26, positionMax: 27)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 35, positionMax: 36)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 44, positionMax: 45)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 58, positionMax: 59)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 61, positionMax: 62)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 69, positionMax: 70)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 73, positionMax: 74)
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 15, positionMax: 16)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 24, positionMax: 26)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 34, positionMax: 35)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 43, positionMax: 44)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 59, positionMax: 60)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 68, positionMax: 69)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 72, positionMax: 73)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 16, positionMax: 17)
        let monster9125 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9125)
        lineBlocksPositions.append([25])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 33, positionMax: 34)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 42, positionMax: 43)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 60, positionMax: 61)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 64, positionMax: 65)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 67, positionMax: 68)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 71, positionMax: 72)
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 17, positionMax: 18)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 33)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 41, positionMax: 42)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 61, positionMax: 62)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 65, positionMax: 67)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 70, positionMax: 71)
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 18, positionMax: 19)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 31, positionMax: 32)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 40, positionMax: 41)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 62, positionMax: 63)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 69, positionMax: 70)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 19, positionMax: 31)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 39, positionMax: 40)
        giftedFragileWallPositions.append(43)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 57, positionMax: 59)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 63, positionMax: 64)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 68, positionMax: 69)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
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
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 20, positionMax: 23)
        let teleporter8724 = ClosedTeleporterBlock(0)
        lineBlocks.append(teleporter8724)
        lineBlocksPositions.append([24])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 25, positionMax: 30)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 37, positionMax: 39)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 64, positionMax: 65)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 67, positionMax: 68)
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 21, positionMax: 22)
        let characterEnd = CharacterEndBlock(isRightOriented: false)
        lineBlocks.append(characterEnd)
        lineBlocksPositions.append([26])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 28, positionMax: 29)
        ballPositions.append(38)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 54, positionMax: 56)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 65, positionMax: 67)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(ball)
        lineBlocksPositions.append(ballPositions)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 22, positionMax: 23)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 27, positionMax: 28)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 23, positionMax: 24)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 26, positionMax: 27)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 51, positionMax: 53)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 24, positionMax: 26)
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 48, positionMax: 50)
        wallPositions.append(80)
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
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 23, positionMax: 28)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 45, positionMax: 47)
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 22, positionMax: 27)
        let switch7928 = SwitchBlock(1)
        lineBlocks.append(switch7928)
        lineBlocksPositions.append([28])
        wallPositions.append(29)
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 21, positionMax: 22)
        let monster7825 = MonsterBlock(gift: false, moves: 2)
        lineBlocks.append(monster7825)
        lineBlocksPositions.append([25])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 29, positionMax: 30)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 42, positionMax: 44)
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 20, positionMax: 21)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 30, positionMax: 31)
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 19, positionMax: 20)
        giftedFragileWallPositions.append(25)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 31, positionMax: 41)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 18, positionMax: 19)
        let gate7532 = GateBlock(giftNumber: 0, switchNumber: 2)
        lineBlocks.append(gate7532)
        lineBlocksPositions.append([32])
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 17, positionMax: 18)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 33)
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 16, positionMax: 17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 34)
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 13, positionMax: 14)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 35)
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 9, positionMax: 11)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 36)
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 6, positionMax: 7)
        let monster7010 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster7010)
        lineBlocksPositions.append([10])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 36)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 36)
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 2, positionMax: 4)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 17, positionMax: 19)
        wallPositions.append(21)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 36)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
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
        let monster673 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster673)
        lineBlocksPositions.append([3])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 17, positionMax: 18)
        wallPositions.append(21)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 36)
        wallPositions.append(80)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 6, positionMax: 8)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 16, positionMax: 17)
        wallPositions.append(21)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 36)
        wallPositions.append(80)
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
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 15, positionMax: 16)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 23, positionMax: 24)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 36)
        wallPositions.append(80)
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
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 10, positionMax: 11)
        wallPositions.append(15)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 36)
        wallPositions.append(80)
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
        wallPositions.append(0)
        wallPositions.append(15)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 25, positionMax: 26)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 36)
        wallPositions.append(80)
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
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 12, positionMax: 15)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 36)
        wallPositions.append(80)
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
        wallPositions.append(0)
        ballPositions.append(14)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 28, positionMax: 36)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(ball)
        lineBlocksPositions.append(ballPositions)
        let line39 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line39)
        // line 40
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        let gate6029 = GateBlock(giftNumber: 4, switchNumber: 0)
        lineBlocks.append(gate6029)
        lineBlocksPositions.append([29])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 36)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line40 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line40)
        // line 41
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions.append(29)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 36)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line41 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line41)
        // line 42
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions.append(29)
        giftedFragileWallPositions.append(31)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 36)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
        let line42 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line42)
        // line 43
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions.append(29)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 36)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line43 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line43)
        // line 44
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions.append(29)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 36)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line44 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line44)
        // line 45
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions.append(29)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 36)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line45 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line45)
        // line 46
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 29, positionMax: 36)
        wallPositions.append(80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line46 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line46)
        // line 47
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line47 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line47)
        // line 48
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line48 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line48)
        // line 49
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line49 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line49)
        // line 50
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line50 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line50)
        // line 51
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line51 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line51)
        // line 52
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line52 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line52)
        // line 53
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 80)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line53 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line53)
        
        let levelProperties = CustomizableProperties.shared.levelsProperties[4]
        super.init(
            title: levelProperties.title,
            lines: levelLines,
            gifts: levelProperties.gifts,
            environment: levelProperties.environment
        )
    }
}
