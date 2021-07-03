//
//  Level8.swift
//  jv3
//
//  Created by Benjamin Breton on 04/09/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
class Level8: Level {
    init() {
        // Level 8
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

        let levelLength = 151
        var levelLines: [BlockLine] = []

        // line 0
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(23)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 94, positionMax: 104)
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
        wallPositions.append(23)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 38, positionMax: 43)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 94, positionMax: 100)
        let teleporter99101 = ClosedTeleporterBlock(4)
        lineBlocks.append(teleporter99101)
        lineBlocksPositions.append([101])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 102, positionMax: 104)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 106, positionMax: 107)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 142, positionMax: 149)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line1 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line1)
        // line 2
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(23)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 109, positionMax: 110)
        wallPositions.append(142)
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
        wallPositions.append(23)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 38, positionMax: 39)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 139, positionMax: 142)
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
        wallPositions.append(23)
        giftedFragileWallPositions.append(42)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 112, positionMax: 113)
        wallPositions.append(139)
        giftedFragileWallPositions.append(145)
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
        wallPositions.append(23)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 34, positionMax: 36)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 115, positionMax: 117)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 119, positionMax: 120)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 137, positionMax: 139)
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
        wallPositions.append(23)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 33, positionMax: 34)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 122, positionMax: 123)
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
        wallPositions.append(23)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 33)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 125, positionMax: 135)
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
        wallPositions.append(23)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 137, positionMax: 138)
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
        wallPositions.append(23)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 28, positionMax: 30)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 122, positionMax: 123)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 21, positionMax: 25)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 27, positionMax: 28)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 58, positionMax: 59)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 119, positionMax: 120)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 140, positionMax: 141)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 21, positionMax: 22)
        let teleporter8923 = OpenTeleporterBlock(5)
        lineBlocks.append(teleporter8923)
        lineBlocksPositions.append([23])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 24, positionMax: 27)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 55, positionMax: 56)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 61, positionMax: 63)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 116, positionMax: 117)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 143, positionMax: 144)
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
        wallPositions.append(21)
        let gate8825 = GateBlock(giftNumber: 3, switchNumber: 0)
        lineBlocks.append(gate8825)
        lineBlocksPositions.append([25])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 52, positionMax: 53)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 65, positionMax: 67)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 113, positionMax: 114)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 146, positionMax: 150)
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
        wallPositions.append(21)
        wallPositions.append(25)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 29, positionMax: 30)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 48, positionMax: 50)
        wallPositions.append(65)
        let teleporter8766 = ClosedTeleporterBlock(2)
        lineBlocks.append(teleporter8766)
        lineBlocksPositions.append([66])
        wallPositions.append(67)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 110, positionMax: 111)
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
        wallPositions.append(21)
        wallPositions.append(25)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 44, positionMax: 46)
        wallPositions.append(99)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line14 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line14)
        // line 15
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 21, positionMax: 25)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 33)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 41, positionMax: 42)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 113, positionMax: 114)
        giftedFragileWallPositions.append(147)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
        let line15 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line15)
        // line 16
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 38, positionMax: 39)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 116, positionMax: 117)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 35, positionMax: 36)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 119, positionMax: 120)
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
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 122, positionMax: 124)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 38, positionMax: 40)
        wallPositions.append(99)
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
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 119, positionMax: 120)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 126, positionMax: 127)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 42, positionMax: 43)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 116, positionMax: 117)
        nonGiftedFragileWallPositions.append(123)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 129, positionMax: 130)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
        let line21 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line21)
        // line 22
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 113, positionMax: 114)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 132, positionMax: 133)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line22 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line22)
        // line 23
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 45, positionMax: 46)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 110, positionMax: 111)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 135, positionMax: 137)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line23 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line23)
        // line 24
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 48, positionMax: 49)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 99, positionMax: 102)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 107, positionMax: 108)
        wallPositions.append(135)
        let teleporter76136 = ClosedTeleporterBlock(7)
        lineBlocks.append(teleporter76136)
        lineBlocksPositions.append([136])
        wallPositions.append(137)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line24 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line24)
        // line 25
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 99, positionMax: 100)
        let teleporter75101 = OpenTeleporterBlock(3)
        lineBlocks.append(teleporter75101)
        lineBlocksPositions.append([101])
        wallPositions.append(102)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 104, positionMax: 105)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line25 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line25)
        // line 26
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 51, positionMax: 52)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 99, positionMax: 100)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line26 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line26)
        // line 27
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 99, positionMax: 100)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 54, positionMax: 55)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 99, positionMax: 100)
        wallPositions.append(102)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 57, positionMax: 58)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 99, positionMax: 100)
        wallPositions.append(102)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 60, positionMax: 61)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 99, positionMax: 100)
        wallPositions.append(102)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 63, positionMax: 64)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 66, positionMax: 68)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 99, positionMax: 100)
        wallPositions.append(102)
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
        wallPositions.append(66)
        let teleporter6867 = OpenTeleporterBlock(8)
        lineBlocks.append(teleporter6867)
        lineBlocksPositions.append([67])
        wallPositions.append(68)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 98, positionMax: 100)
        wallPositions.append(102)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 97, positionMax: 100)
        wallPositions.append(102)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 96, positionMax: 100)
        wallPositions.append(102)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 95, positionMax: 97)
        let teleporter6598 = OpenTeleporterBlock(6)
        lineBlocks.append(teleporter6598)
        lineBlocksPositions.append([98])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 99, positionMax: 100)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 102, positionMax: 103)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 94, positionMax: 95)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 103, positionMax: 104)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 93, positionMax: 94)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 98, positionMax: 100)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 104, positionMax: 105)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 92, positionMax: 93)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 98, positionMax: 100)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 105, positionMax: 106)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line38 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line38)
        // line 39
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 91, positionMax: 92)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 98, positionMax: 100)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 106, positionMax: 107)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 90, positionMax: 91)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 98, positionMax: 100)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 107, positionMax: 108)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line40 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line40)
        // line 41
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 89, positionMax: 90)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 98, positionMax: 100)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 108, positionMax: 109)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line41 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line41)
        // line 42
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 88, positionMax: 89)
        giftedFragileWallPositions.append(92)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 98, positionMax: 100)
        giftedFragileWallPositions.append(106)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 109, positionMax: 110)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
        let line42 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line42)
        // line 43
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 87, positionMax: 88)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 97, positionMax: 101)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 110, positionMax: 111)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line43 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line43)
        // line 44
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 86, positionMax: 87)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 96, positionMax: 97)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 101, positionMax: 102)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 111, positionMax: 112)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line44 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line44)
        // line 45
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 85, positionMax: 86)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 95, positionMax: 96)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 102, positionMax: 103)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 112, positionMax: 113)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line45 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line45)
        // line 46
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(84)
        let teleporter5485 = ClosedTeleporterBlock(5)
        lineBlocks.append(teleporter5485)
        lineBlocksPositions.append([85])
        wallPositions.append(86)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 94, positionMax: 95)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 103, positionMax: 104)
        wallPositions.append(112)
        let teleporter54113 = ClosedTeleporterBlock(6)
        lineBlocks.append(teleporter54113)
        lineBlocksPositions.append([113])
        wallPositions.append(114)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line46 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line46)
        // line 47
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 83, positionMax: 84)
        wallPositions.append(94)
        wallPositions.append(99)
        wallPositions.append(104)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 114, positionMax: 115)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line47 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line47)
        // line 48
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 82, positionMax: 116)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line48 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line48)
        // line 49
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 81, positionMax: 82)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 84, positionMax: 92)
        let teleporter5193 = OpenTeleporterBlock(0)
        lineBlocks.append(teleporter5193)
        lineBlocksPositions.append([93])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 94, positionMax: 101)
        let teleporter51102 = ClosedTeleporterBlock(9)
        lineBlocks.append(teleporter51102)
        lineBlocksPositions.append([102])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 103, positionMax: 104)
        let teleporter51105 = OpenTeleporterBlock(2)
        lineBlocks.append(teleporter51105)
        lineBlocksPositions.append([105])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 106, positionMax: 111)
        let teleporter51112 = OpenTeleporterBlock(4)
        lineBlocks.append(teleporter51112)
        lineBlocksPositions.append([112])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 113, positionMax: 114)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 116, positionMax: 117)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line49 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line49)
        // line 50
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 80, positionMax: 81)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 84, positionMax: 85)
        characterPosition.append(86)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 94, positionMax: 95)
        let characterEnd = CharacterEndBlock(isRightOriented: true)
        lineBlocks.append(characterEnd)
        lineBlocksPositions.append([96])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 103, positionMax: 104)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 107, positionMax: 110)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 113, positionMax: 114)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 117, positionMax: 118)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(character)
        lineBlocksPositions.append(characterPosition)
        let line50 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line50)
        // line 51
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 79, positionMax: 80)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 84, positionMax: 85)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 94, positionMax: 95)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 103, positionMax: 104)
        wallPositions.append(107)
        let teleporter49108 = ClosedTeleporterBlock(0)
        lineBlocks.append(teleporter49108)
        lineBlocksPositions.append([108])
        let teleporter49109 = ClosedTeleporterBlock(3)
        lineBlocks.append(teleporter49109)
        lineBlocksPositions.append([109])
        wallPositions.append(110)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 113, positionMax: 114)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 118, positionMax: 119)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line51 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line51)
        // line 52
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 78, positionMax: 79)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 84, positionMax: 85)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 94, positionMax: 95)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 103, positionMax: 104)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 113, positionMax: 114)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 119, positionMax: 120)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line52 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line52)
        // line 53
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 77, positionMax: 78)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 84, positionMax: 85)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 94, positionMax: 95)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 103, positionMax: 104)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 113, positionMax: 114)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 120, positionMax: 121)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line53 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line53)
        // line 54
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 76, positionMax: 77)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 84, positionMax: 85)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 94, positionMax: 95)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 103, positionMax: 104)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 113, positionMax: 114)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 121, positionMax: 122)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line54 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line54)
        // line 55
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 75, positionMax: 123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line55 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line55)
        // line 56
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 75, positionMax: 76)
        let teleporter4477 = OpenTeleporterBlock(9)
        lineBlocks.append(teleporter4477)
        lineBlocksPositions.append([77])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 78, positionMax: 117)
        let teleporter44118 = ClosedTeleporterBlock(8)
        lineBlocks.append(teleporter44118)
        lineBlocksPositions.append([118])
        wallPositions.append(119)
        let teleporter44120 = OpenTeleporterBlock(7)
        lineBlocks.append(teleporter44120)
        lineBlocksPositions.append([120])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 121, positionMax: 123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line56 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line56)
        // line 57
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(75)
        let gate4379 = GateBlock(giftNumber: 5, switchNumber: 0)
        lineBlocks.append(gate4379)
        lineBlocksPositions.append([79])
        wallPositions.append(123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line57 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line57)
        // line 58
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(75)
        wallPositions.append(79)
        wallPositions.append(123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line58 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line58)
        // line 59
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(75)
        wallPositions.append(79)
        wallPositions.append(123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line59 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line59)
        // line 60
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(75)
        wallPositions.append(79)
        wallPositions.append(123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line60 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line60)
        // line 61
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(75)
        wallPositions.append(79)
        wallPositions.append(123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line61 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line61)
        // line 62
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(75)
        wallPositions.append(79)
        wallPositions.append(123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line62 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line62)
        // line 63
        wallPositions = []
        characterPosition = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 75, positionMax: 123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line63 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line63)
        
        let levelProperties = CustomizableProperties.shared.levelsProperties[7]
        super.init(
            title: levelProperties.title,
            lines: levelLines,
            gifts: levelProperties.gifts,
            environment: levelProperties.environment
        )
    }
}
