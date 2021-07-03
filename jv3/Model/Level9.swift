//
//  Level9.swift
//  jv3
//
//  Created by Benjamin Breton on 07/09/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
class Level9: Level {
    init() {
        // Level 9
        let wall = WallBlock()
        let character = CharacterBlock()
        let giftedFragileWall = FragileWallBlock(gift: true)
        let nonGiftedFragileWall = FragileWallBlock(gift: false)

        var wallPositions: [Int] = []
        var characterPosition: [Int] = []
        var nonGiftedFragileWallPositions: [Int] = []
        var giftedFragileWallPositions: [Int] = []
        var lineBlocks: [Block] = []
        var lineBlocksPositions: [[Int]] = []

        let levelLength = 120
        var levelLines: [BlockLine] = []

        // line 0
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 3)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 10, positionMax: 17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 113, positionMax: 119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line0 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line0)
        // line 1
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        characterPosition.append(1)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 5, positionMax: 6)
        let monster9913 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9913)
        lineBlocksPositions.append([13])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 17, positionMax: 31)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(character)
        lineBlocksPositions.append(characterPosition)
        let line1 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line1)
        // line 2
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 8, positionMax: 9)
        let monster9818 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9818)
        lineBlocksPositions.append([18])
        let monster9823 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9823)
        lineBlocksPositions.append([23])
        let monster9827 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9827)
        lineBlocksPositions.append([27])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 33, positionMax: 34)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line2 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line2)
        // line 3
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 36, positionMax: 37)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line3 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line3)
        // line 4
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        giftedFragileWallPositions.append(25)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 39, positionMax: 43)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
        let line4 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line4)
        // line 5
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions.append(31)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 43, positionMax: 45)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 73, positionMax: 75)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line5 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line5)
        // line 6
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 1)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 16, positionMax: 17)
        let gun9418 = RightGunBlock(4)
        lineBlocks.append(gun9418)
        lineBlocksPositions.append([18])
        wallPositions.append(31)
        let monster9444 = MonsterBlock(gift: true, moves: 1)
        lineBlocks.append(monster9444)
        lineBlocksPositions.append([44])
        wallPositions.append(73)
        let teleporter9474 = ClosedTeleporterBlock(1)
        lineBlocks.append(teleporter9474)
        lineBlocksPositions.append([74])
        wallPositions.append(75)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line6 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line6)
        // line 7
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 2)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 15, positionMax: 17)
        wallPositions.append(31)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 40, positionMax: 41)
        wallPositions.append(73)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 77, positionMax: 80)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line7 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line7)
        // line 8
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        let teleporter921 = ClosedTeleporterBlock(0)
        lineBlocks.append(teleporter921)
        lineBlocksPositions.append([1])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 2, positionMax: 15)
        let teleporter9216 = OpenTeleporterBlock(1)
        lineBlocks.append(teleporter9216)
        lineBlocksPositions.append([16])
        wallPositions.append(17)
        wallPositions.append(31)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 37, positionMax: 38)
        wallPositions.append(73)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 80, positionMax: 84)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line8 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line8)
        // line 9
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions.append(17)
        wallPositions.append(31)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 34, positionMax: 35)
        wallPositions.append(73)
        wallPositions.append(84)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line9 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line9)
        // line 10
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 31, positionMax: 32)
        wallPositions.append(73)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 84, positionMax: 88)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line10 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line10)
        // line 11
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 9, positionMax: 15)
        let teleporter8916 = OpenTeleporterBlock(0)
        lineBlocks.append(teleporter8916)
        lineBlocksPositions.append([16])
        wallPositions.append(17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 28, positionMax: 29)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 73, positionMax: 74)
        let gun8975 = RightGunBlock(3)
        lineBlocks.append(gun8975)
        lineBlocksPositions.append([75])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 88, positionMax: 89)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line11 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line11)
        // line 12
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 7)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 9, positionMax: 13)
        wallPositions.append(17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 25, positionMax: 26)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 91, positionMax: 92)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line12 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line12)
        // line 13
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 1)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 7)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 10, positionMax: 13)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 15, positionMax: 17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 20, positionMax: 23)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 94, positionMax: 96)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line13 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line13)
        // line 14
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 7)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 11, positionMax: 13)
        let gate8615 = GateBlock(giftNumber: 4, switchNumber: 0)
        lineBlocks.append(gate8615)
        lineBlocksPositions.append([15])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 17, positionMax: 20)
        giftedFragileWallPositions.append(88)
        wallPositions.append(98)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
        let line14 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line14)
        // line 15
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 2, positionMax: 7)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 12, positionMax: 15)
        wallPositions.append(17)
        let monster8519 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster8519)
        lineBlocksPositions.append([19])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 101)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line15 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line15)
        // line 16
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 7)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 13, positionMax: 15)
        wallPositions.append(17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 21, positionMax: 22)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 103, positionMax: 105)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line16 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line16)
        // line 17
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 1)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 7)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 14, positionMax: 15)
        wallPositions.append(17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 24, positionMax: 25)
        wallPositions.append(107)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line17 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line17)
        // line 18
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 12)
        wallPositions.append(17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 27, positionMax: 28)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 109, positionMax: 119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line18 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line18)
        // line 19
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 2, positionMax: 11)
        wallPositions.append(17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 30, positionMax: 32)
        let monster81110 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster81110)
        lineBlocksPositions.append([110])
        let gate81113 = GateBlock(giftNumber: 5, switchNumber: 0)
        lineBlocks.append(gate81113)
        lineBlocksPositions.append([113])
        let monster81115 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster81115)
        lineBlocksPositions.append([115])
        let characterEnd = CharacterEndBlock(isRightOriented: false)
        lineBlocks.append(characterEnd)
        lineBlocksPositions.append([118])
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line19 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line19)
        // line 20
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 10)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 13, positionMax: 17)
        let monster8031 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster8031)
        lineBlocksPositions.append([31])
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line20 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line20)
        // line 21
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 1)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 9)
        wallPositions.append(17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 27, positionMax: 28)
        wallPositions.append(113)
        wallPositions.append(119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line21 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line21)
        // line 22
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 8)
        nonGiftedFragileWallPositions.append(9)
        wallPositions.append(17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 24, positionMax: 25)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 113, positionMax: 119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
        let line22 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line22)
        // line 23
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 2, positionMax: 7)
        nonGiftedFragileWallPositions.append(9)
        let gun7716 = LeftGunBlock(2)
        lineBlocks.append(gun7716)
        lineBlocksPositions.append([16])
        wallPositions.append(17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 21, positionMax: 22)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
        let line23 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line23)
        // line 24
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 6)
        nonGiftedFragileWallPositions.append(7)
        nonGiftedFragileWallPositions.append(9)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 17, positionMax: 19)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
        let line24 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line24)
        // line 25
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 1)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 5)
        nonGiftedFragileWallPositions = Level.addSeveralBlocks(previousArray: nonGiftedFragileWallPositions, positionMin: 6, positionMax: 7)
        nonGiftedFragileWallPositions.append(9)
        wallPositions.append(17)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
        let line25 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line25)
        // line 26
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 4)
        giftedFragileWallPositions.append(5)
        nonGiftedFragileWallPositions = Level.addSeveralBlocks(previousArray: nonGiftedFragileWallPositions, positionMin: 6, positionMax: 7)
        nonGiftedFragileWallPositions.append(9)
        wallPositions.append(17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 20, positionMax: 21)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
        let line26 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line26)
        // line 27
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 2, positionMax: 4)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 6, positionMax: 18)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 23, positionMax: 24)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line27 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line27)
        // line 28
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 4)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 7, positionMax: 18)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 26, positionMax: 27)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line28 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line28)
        // line 29
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 1)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 4)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 7, positionMax: 18)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 29, positionMax: 30)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line29 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line29)
        // line 30
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 18)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line30 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line30)
        // line 31
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        let gate6915 = GateBlock(giftNumber: 3, switchNumber: 0)
        lineBlocks.append(gate6915)
        lineBlocksPositions.append([15])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 18, positionMax: 27)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line31 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line31)
        // line 32
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 15)
        let monster6822 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster6822)
        lineBlocksPositions.append([22])
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line32 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line32)
        // line 33
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        let monster675 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster675)
        lineBlocksPositions.append([5])
        let monster6710 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster6710)
        lineBlocksPositions.append([10])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 18, positionMax: 20)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line33 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line33)
        // line 34
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions.append(20)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line34 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line34)
        // line 35
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 4, positionMax: 14)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 20, positionMax: 24)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line35 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line35)
        // line 36
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        let gun641 = RightGunBlock(1)
        lineBlocks.append(gun641)
        lineBlocksPositions.append([1])
        let monster648 = MonsterBlock(gift: true, moves: 3)
        lineBlocks.append(monster648)
        lineBlocksPositions.append([8])
        wallPositions.append(12)
        let gate6414 = GateBlock(giftNumber: 3, switchNumber: 0)
        lineBlocks.append(gate6414)
        lineBlocksPositions.append([14])
        wallPositions.append(24)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line36 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line36)
        // line 37
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 14, positionMax: 19)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line37 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line37)
        // line 38
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 1)
        nonGiftedFragileWallPositions = Level.addSeveralBlocks(previousArray: nonGiftedFragileWallPositions, positionMin: 2, positionMax: 13)
        wallPositions.append(14)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
        let line38 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line38)
        // line 39
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 6)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 10, positionMax: 14)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line39 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line39)
        // line 40
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 6, positionMax: 10)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line40 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line40)
        
        let levelProperties = CustomizableProperties.shared.levelsProperties[8]
        super.init(
            title: levelProperties.title,
            lines: levelLines,
            gifts: levelProperties.gifts,
            environment: levelProperties.environment
        )
    }
}
