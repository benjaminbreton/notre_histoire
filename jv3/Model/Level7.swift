//
//  Level7.swift
//  jv3
//
//  Created by Benjamin Breton on 03/09/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
class Level7: Level {
    init() {
        // Level 7
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

        let levelLength = 63
        var levelLines: [BlockLine] = []

        // line 0
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 4, positionMax: 10)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 23, positionMax: 37)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 39, positionMax: 45)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 1, positionMax: 4)
        characterPosition.append(7)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 10, positionMax: 14)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 18, positionMax: 20)
        wallPositions.append(23)
        let switch9924 = SwitchBlock(4)
        lineBlocks.append(switch9924)
        lineBlocksPositions.append([24])
        let switch9925 = SwitchBlock(3)
        lineBlocks.append(switch9925)
        lineBlocksPositions.append([25])
        let switch9926 = SwitchBlock(2)
        lineBlocks.append(switch9926)
        lineBlocksPositions.append([26])
        let switch9927 = SwitchBlock(1)
        lineBlocks.append(switch9927)
        lineBlocksPositions.append([27])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 28, positionMax: 36)
        let teleporter9937 = OpenTeleporterBlock(2)
        lineBlocks.append(teleporter9937)
        lineBlocksPositions.append([37])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 45, positionMax: 55)
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
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions.append(1)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 14, positionMax: 16)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 22, positionMax: 23)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 29, positionMax: 36)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 49, positionMax: 50)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 55, positionMax: 56)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 1)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 21, positionMax: 22)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 29, positionMax: 36)
        giftedFragileWallPositions.append(40)
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
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 5)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 20, positionMax: 21)
        let gate9629 = GateBlock(giftNumber: 0, switchNumber: 4)
        lineBlocks.append(gate9629)
        lineBlocksPositions.append([29])
        let gate9630 = GateBlock(giftNumber: 0, switchNumber: 3)
        lineBlocks.append(gate9630)
        lineBlocksPositions.append([30])
        let gate9631 = GateBlock(giftNumber: 0, switchNumber: 2)
        lineBlocks.append(gate9631)
        lineBlocksPositions.append([31])
        let gate9632 = GateBlock(giftNumber: 0, switchNumber: 1)
        lineBlocks.append(gate9632)
        lineBlocksPositions.append([32])
        let gate9633 = GateBlock(giftNumber: 5, switchNumber: 0)
        lineBlocks.append(gate9633)
        lineBlocksPositions.append([33])
        let characterEnd = CharacterEndBlock(isRightOriented: false)
        lineBlocks.append(characterEnd)
        lineBlocksPositions.append([35])
        wallPositions.append(36)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 58, positionMax: 59)
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
        giftedFragileWallPositions.append(15)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 19, positionMax: 20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 29, positionMax: 36)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 55, positionMax: 56)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
        let line5 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line5)
        // line 6
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 6, positionMax: 8)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 18, positionMax: 19)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 35, positionMax: 36)
        let gun9437 = RightGunBlock(6)
        lineBlocks.append(gun9437)
        lineBlocksPositions.append([37])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 52, positionMax: 53)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 61, positionMax: 62)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 1, positionMax: 3)
        let monster937 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster937)
        lineBlocksPositions.append([7])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 17, positionMax: 18)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 36, positionMax: 37)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 49, positionMax: 50)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 9, positionMax: 10)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 16, positionMax: 17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 37, positionMax: 40)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 46, positionMax: 47)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 58, positionMax: 60)
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
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 14, positionMax: 16)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 38, positionMax: 41)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 45, positionMax: 46)
        let monster9159 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9159)
        lineBlocksPositions.append([59])
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 2, positionMax: 3)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 11, positionMax: 15)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 39, positionMax: 45)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 56, positionMax: 57)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 5, positionMax: 8)
        ballPositions.append(13)
        ballPositions.append(41)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 43, positionMax: 44)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(ball)
        lineBlocksPositions.append(ballPositions)
        let line11 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line11)
        // line 12
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 13, positionMax: 16)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 38, positionMax: 41)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 54, positionMax: 55)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 2, positionMax: 3)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 11, positionMax: 13)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 41, positionMax: 43)
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
        giftedFragileWallPositions.append(6)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 10, positionMax: 11)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 43, positionMax: 44)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 52, positionMax: 53)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
        let line14 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line14)
        // line 15
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 1)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 9, positionMax: 10)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 44, positionMax: 45)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 7, positionMax: 9)
        wallPositions.append(27)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 45, positionMax: 47)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 50, positionMax: 51)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 2, positionMax: 3)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 6, positionMax: 8)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 26, positionMax: 28)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 46, positionMax: 48)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 5, positionMax: 9)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 25, positionMax: 29)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 45, positionMax: 49)
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
        wallPositions.append(8)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 24, positionMax: 30)
        wallPositions.append(46)
        let monster8148 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster8148)
        lineBlocksPositions.append([48])
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 4)
        wallPositions.append(8)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 23, positionMax: 31)
        wallPositions.append(46)
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
        wallPositions.append(8)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 22, positionMax: 32)
        wallPositions.append(46)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 1)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 8, positionMax: 9)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 21, positionMax: 33)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 45, positionMax: 46)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 9, positionMax: 10)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 20, positionMax: 26)
        let teleporter7727 = ClosedTeleporterBlock(2)
        lineBlocks.append(teleporter7727)
        lineBlocksPositions.append([27])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 28, positionMax: 34)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 44, positionMax: 45)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 5)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 10, positionMax: 11)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 43, positionMax: 44)
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
        let monster754 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster754)
        lineBlocksPositions.append([4])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 11, positionMax: 12)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 23, positionMax: 25)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 29, positionMax: 31)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 42, positionMax: 43)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 1)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 7, positionMax: 9)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 12, positionMax: 13)
        wallPositions.append(17)
        let gun7418 = RightGunBlock(4)
        lineBlocks.append(gun7418)
        lineBlocksPositions.append([18])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 24, positionMax: 25)
        giftedFragileWallPositions.append(27)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 29, positionMax: 30)
        let gun7436 = LeftGunBlock(4)
        lineBlocks.append(gun7436)
        lineBlocksPositions.append([36])
        wallPositions.append(37)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 41, positionMax: 42)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
        let line26 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line26)
        // line 27
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        let monster738 = MonsterBlock(gift: true, moves: 1)
        lineBlocks.append(monster738)
        lineBlocksPositions.append([8])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 13, positionMax: 14)
        wallPositions.append(17)
        wallPositions.append(25)
        wallPositions.append(29)
        wallPositions.append(37)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 40, positionMax: 41)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 2, positionMax: 3)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 14, positionMax: 15)
        wallPositions.append(17)
        wallPositions.append(37)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 39, positionMax: 40)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 15, positionMax: 17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 37, positionMax: 39)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 4, positionMax: 5)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 16, positionMax: 17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 37, positionMax: 38)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 17, positionMax: 18)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 36, positionMax: 37)
        wallPositions.append(45)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 6, positionMax: 7)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 18, positionMax: 19)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 35, positionMax: 36)
        let gun6844 = LeftGunBlock(4)
        lineBlocks.append(gun6844)
        lineBlocksPositions.append([44])
        wallPositions.append(45)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 19, positionMax: 20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 34, positionMax: 35)
        wallPositions.append(45)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 8, positionMax: 9)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 13, positionMax: 14)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 20, positionMax: 21)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 33, positionMax: 34)
        wallPositions.append(41)
        wallPositions.append(45)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 16, positionMax: 17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 21, positionMax: 22)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 33)
        let gun6540 = LeftGunBlock(4)
        lineBlocks.append(gun6540)
        lineBlocksPositions.append([40])
        wallPositions.append(41)
        wallPositions.append(45)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 10, positionMax: 12)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 22, positionMax: 23)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 31, positionMax: 32)
        wallPositions.append(41)
        wallPositions.append(45)
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
        let monster6311 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster6311)
        lineBlocksPositions.append([11])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 19, positionMax: 20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 23, positionMax: 25)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 29, positionMax: 31)
        wallPositions.append(41)
        wallPositions.append(45)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 23, positionMax: 25)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 29, positionMax: 31)
        wallPositions.append(41)
        wallPositions.append(45)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line38 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line38)
        // line 39
        wallPositions = []
        characterPosition = []
        ballPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        ballPositions.append(25)
        wallPositions.append(27)
        ballPositions.append(29)
        wallPositions.append(41)
        wallPositions.append(45)
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
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 22)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 26, positionMax: 28)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 54)
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
        wallPositions.append(0)
        let teleporter591 = OpenTeleporterBlock(1)
        lineBlocks.append(teleporter591)
        lineBlocksPositions.append([1])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 2, positionMax: 21)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 26, positionMax: 28)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 33, positionMax: 52)
        let teleporter5953 = ClosedTeleporterBlock(1)
        lineBlocks.append(teleporter5953)
        lineBlocksPositions.append([53])
        wallPositions.append(54)
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
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 26, positionMax: 28)
        wallPositions.append(54)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 54)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line43 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line43)
        
        let levelProperties = CustomizableProperties.shared.levelsProperties[6]
        super.init(
            title: levelProperties.title,
            lines: levelLines,
            gifts: levelProperties.gifts,
            environment: levelProperties.environment
        )
    }
}
