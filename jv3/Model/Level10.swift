//
//  Level10.swift
//  jv3
//
//  Created by Benjamin Breton on 07/09/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
class Level10: Level {
    init() {
        // Level 10
        let wall = WallBlock()
        let character = CharacterBlock()
        let giftedFragileWall = FragileWallBlock(gift: true)
        let ball = BallBlock()

        var wallPositions: [Int] = []
        var characterPosition: [Int] = []
        var ballPositions: [Int] = []
        var giftedFragileWallPositions: [Int] = []
        var lineBlocks: [Block] = []
        var lineBlocksPositions: [[Int]] = []

        let levelLength = 127
        var levelLines: [BlockLine] = []

        // line 0
        wallPositions = []
        characterPosition = []
        ballPositions = []
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
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(23)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 39, positionMax: 50)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 94, positionMax: 100)
        let teleporter99101 = ClosedTeleporterBlock(4)
        lineBlocks.append(teleporter99101)
        lineBlocksPositions.append([101])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 102, positionMax: 104)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 106, positionMax: 107)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line1 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line1)
        // line 2
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(23)
        wallPositions.append(39)
        let monster9842 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9842)
        lineBlocksPositions.append([42])
        wallPositions.append(48)
        let teleporter9849 = ClosedTeleporterBlock(2)
        lineBlocks.append(teleporter9849)
        lineBlocksPositions.append([49])
        wallPositions.append(50)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 109, positionMax: 110)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line2 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line2)
        // line 3
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(23)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 36, positionMax: 39)
        wallPositions.append(99)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line3 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line3)
        // line 4
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(23)
        wallPositions.append(36)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 112, positionMax: 113)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line4 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line4)
        // line 5
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(23)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 33, positionMax: 36)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 115, positionMax: 117)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 119, positionMax: 120)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line5 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line5)
        // line 6
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(23)
        wallPositions.append(33)
        wallPositions.append(99)
        let monster94116 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster94116)
        lineBlocksPositions.append([116])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 122, positionMax: 123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line6 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line6)
        // line 7
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(23)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 30, positionMax: 33)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 125, positionMax: 126)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line7 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line7)
        // line 8
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(23)
        wallPositions.append(30)
        wallPositions.append(99)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line8 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line8)
        // line 9
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(23)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 27, positionMax: 30)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 122, positionMax: 123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line9 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line9)
        // line 10
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 21, positionMax: 25)
        wallPositions.append(27)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 58, positionMax: 59)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 119, positionMax: 120)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line10 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line10)
        // line 11
        wallPositions = []
        characterPosition = []
        ballPositions = []
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
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line11 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line11)
        // line 12
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(21)
        let gate8825 = GateBlock(giftNumber: 3, switchNumber: 0)
        lineBlocks.append(gate8825)
        lineBlocksPositions.append([25])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 52, positionMax: 53)
        let monster8862 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster8862)
        lineBlocksPositions.append([62])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 65, positionMax: 67)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 113, positionMax: 114)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line12 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line12)
        // line 13
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(21)
        wallPositions.append(25)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 29, positionMax: 30)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 48, positionMax: 50)
        wallPositions.append(65)
        let teleporter8766 = ClosedTeleporterBlock(0)
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
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(21)
        wallPositions.append(25)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 44, positionMax: 46)
        let monster8649 = MonsterBlock(gift: true, moves: 1)
        lineBlocks.append(monster8649)
        lineBlocksPositions.append([49])
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 107, positionMax: 108)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line14 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line14)
        // line 15
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 21, positionMax: 25)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 33)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 41, positionMax: 42)
        let monster8545 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster8545)
        lineBlocksPositions.append([45])
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 103, positionMax: 105)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 113, positionMax: 114)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line15 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line15)
        // line 16
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        let monster8423 = MonsterBlock(gift: true, moves: 2)
        lineBlocks.append(monster8423)
        lineBlocksPositions.append([23])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 28, positionMax: 29)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 38, positionMax: 39)
        wallPositions.append(99)
        let monster84104 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster84104)
        lineBlocksPositions.append([104])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 116, positionMax: 117)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line16 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line16)
        // line 17
        wallPositions = []
        characterPosition = []
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 38, positionMax: 40)
        wallPositions.append(99)
        let monster81123 = MonsterBlock(gift: true, moves: 1)
        lineBlocks.append(monster81123)
        lineBlocksPositions.append([123])
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line19 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line19)
        // line 20
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        let monster8039 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster8039)
        lineBlocksPositions.append([39])
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 119, positionMax: 120)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line20 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line20)
        // line 21
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 42, positionMax: 43)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 116, positionMax: 117)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line21 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line21)
        // line 22
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 113, positionMax: 114)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line22 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line22)
        // line 23
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 45, positionMax: 46)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 110, positionMax: 111)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line23 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line23)
        // line 24
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 48, positionMax: 49)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 99, positionMax: 102)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 107, positionMax: 108)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line24 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line24)
        // line 25
        wallPositions = []
        characterPosition = []
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 92, positionMax: 93)
        giftedFragileWallPositions.append(96)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 98, positionMax: 100)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 105, positionMax: 106)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
        let line38 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line38)
        // line 39
        wallPositions = []
        characterPosition = []
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 88, positionMax: 89)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 98, positionMax: 100)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 109, positionMax: 110)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line42 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line42)
        // line 43
        wallPositions = []
        characterPosition = []
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 85, positionMax: 86)
        let gun5594 = LeftGunBlock(4)
        lineBlocks.append(gun5594)
        lineBlocksPositions.append([94])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 95, positionMax: 96)
        wallPositions.append(99)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 102, positionMax: 103)
        let gun55104 = RightGunBlock(4)
        lineBlocks.append(gun55104)
        lineBlocksPositions.append([104])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 112, positionMax: 113)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line45 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line45)
        // line 46
        wallPositions = []
        characterPosition = []
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        let monster5099 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster5099)
        lineBlocksPositions.append([99])
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
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 79, positionMax: 80)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 84, positionMax: 85)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 94, positionMax: 95)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 103, positionMax: 104)
        wallPositions.append(107)
        let teleporter49108 = ClosedTeleporterBlock(7)
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
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
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(75)
        let gate4379 = GateBlock(giftNumber: 5, switchNumber: 0)
        lineBlocks.append(gate4379)
        lineBlocksPositions.append([79])
        wallPositions.append(81)
//        let monster4382 = MonsterBlock(gift: true, moves: a)
//        lineBlocks.append(monster4382)
//        lineBlocksPositions.append([82])
        
        let boss = BossMonsterBlock()
        lineBlocks.append(boss)
        lineBlocksPositions.append([82])
        
        
        wallPositions.append(123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line57 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line57)
        // line 58
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(75)
        wallPositions.append(79)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 114, positionMax: 115)
        wallPositions.append(123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line58 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line58)
        // line 59
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(75)
        wallPositions.append(79)
        wallPositions.append(84)
        let gun4185 = RightGunBlock(2)
        lineBlocks.append(gun4185)
        lineBlocksPositions.append([85])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 113, positionMax: 114)
        wallPositions.append(123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line59 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line59)
        // line 60
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(75)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 79, positionMax: 113)
        wallPositions.append(123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line60 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line60)
        // line 61
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(75)
        wallPositions.append(79)
        let monster3983 = MonsterBlock(gift: false, moves: 3)
        lineBlocks.append(monster3983)
        lineBlocksPositions.append([83])
        let monster3990 = MonsterBlock(gift: false, moves: 3)
        lineBlocks.append(monster3990)
        lineBlocksPositions.append([90])
        let monster3997 = MonsterBlock(gift: false, moves: 3)
        lineBlocks.append(monster3997)
        lineBlocksPositions.append([97])
        let monster39104 = MonsterBlock(gift: false, moves: 3)
        lineBlocks.append(monster39104)
        lineBlocksPositions.append([104])
        wallPositions.append(123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line61 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line61)
        // line 62
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(75)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 79, positionMax: 81)
        wallPositions.append(123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line62 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line62)
        // line 63
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 75, positionMax: 80)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 84, positionMax: 123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line63 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line63)
        // line 64
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 75, positionMax: 79)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 118, positionMax: 123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line64 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line64)
        // line 65
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        let monster3577 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster3577)
        lineBlocksPositions.append([77])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 119, positionMax: 123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line65 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line65)
        // line 66
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 81, positionMax: 83)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 120, positionMax: 123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line66 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line66)
        // line 67
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        let monster3382 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster3382)
        lineBlocksPositions.append([82])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 86, positionMax: 88)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 121, positionMax: 123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line67 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line67)
        // line 68
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        let monster3287 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster3287)
        lineBlocksPositions.append([87])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 91, positionMax: 93)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 122, positionMax: 123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line68 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line68)
        // line 69
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        let monster3192 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster3192)
        lineBlocksPositions.append([92])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 96, positionMax: 98)
        wallPositions.append(123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line69 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line69)
        // line 70
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        let monster3097 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster3097)
        lineBlocksPositions.append([97])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 101, positionMax: 103)
        wallPositions.append(123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line70 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line70)
        // line 71
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        let monster29102 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster29102)
        lineBlocksPositions.append([102])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 106, positionMax: 108)
        let gun29122 = LeftGunBlock(3)
        lineBlocks.append(gun29122)
        lineBlocksPositions.append([122])
        wallPositions.append(123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line71 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line71)
        // line 72
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        ballPositions.append(107)
        wallPositions.append(123)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(ball)
        lineBlocksPositions.append(ballPositions)
        let line72 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line72)
        
        let levelProperties = CustomizableProperties.shared.levelsProperties[9]
        super.init(
            title: levelProperties.title,
            lines: levelLines,
            gifts: levelProperties.gifts,
            environment: levelProperties.environment
        )
    }
}
