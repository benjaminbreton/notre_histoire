//
//  Level6.swift
//  jv3
//
//  Created by Benjamin Breton on 03/09/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
class Level6: Level {
    init() {
        // Level 6
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
        
        let levelLength = 111
        var levelLines: [BlockLine] = []
        
        // line 0
        wallPositions = []
        characterPosition = []
        ballPositions = []
        nonGiftedFragileWallPositions = []
        giftedFragileWallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 9)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 13, positionMax: 15)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 19, positionMax: 21)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 25, positionMax: 102)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 104, positionMax: 105)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 108, positionMax: 110)
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
        characterPosition.append(3)
        let monster996 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster996)
        lineBlocksPositions.append([6])
        let monster9926 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9926)
        lineBlocksPositions.append([26])
        let monster9929 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9929)
        lineBlocksPositions.append([29])
        let monster9932 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9932)
        lineBlocksPositions.append([32])
        let monster9935 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9935)
        lineBlocksPositions.append([35])
        let monster9938 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9938)
        lineBlocksPositions.append([38])
        let monster9941 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9941)
        lineBlocksPositions.append([41])
        let monster9944 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9944)
        lineBlocksPositions.append([44])
        let monster9947 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9947)
        lineBlocksPositions.append([47])
        let monster9950 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9950)
        lineBlocksPositions.append([50])
        let monster9953 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9953)
        lineBlocksPositions.append([53])
        let monster9956 = MonsterBlock(gift: true, moves: 1)
        lineBlocks.append(monster9956)
        lineBlocksPositions.append([56])
        let monster9959 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9959)
        lineBlocksPositions.append([59])
        let monster9962 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9962)
        lineBlocksPositions.append([62])
        let monster9965 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9965)
        lineBlocksPositions.append([65])
        let monster9968 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9968)
        lineBlocksPositions.append([68])
        let monster9971 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9971)
        lineBlocksPositions.append([71])
        let monster9974 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9974)
        lineBlocksPositions.append([74])
        let monster9977 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9977)
        lineBlocksPositions.append([77])
        let monster9980 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9980)
        lineBlocksPositions.append([80])
        let monster9983 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9983)
        lineBlocksPositions.append([83])
        let monster9986 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9986)
        lineBlocksPositions.append([86])
        let monster9989 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9989)
        lineBlocksPositions.append([89])
        let monster9992 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9992)
        lineBlocksPositions.append([92])
        let monster9995 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9995)
        lineBlocksPositions.append([95])
        let monster9998 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster9998)
        lineBlocksPositions.append([98])
        let gate99100 = GateBlock(giftNumber: 5, switchNumber: 0)
        lineBlocks.append(gate99100)
        lineBlocksPositions.append([100])
        wallPositions.append(110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 2)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 23, positionMax: 24)
        wallPositions.append(100)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 106, positionMax: 107)
        wallPositions.append(110)
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
        giftedFragileWallPositions.append(14)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 22, positionMax: 23)
        wallPositions.append(100)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 103, positionMax: 104)
        wallPositions.append(110)
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
        wallPositions.append(0)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 4)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 21, positionMax: 22)
        wallPositions.append(100)
        wallPositions.append(110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 6, positionMax: 7)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 20, positionMax: 21)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 101)
        wallPositions.append(110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 9, positionMax: 10)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 19, positionMax: 20)
        wallPositions.append(100)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 103, positionMax: 104)
        wallPositions.append(110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 12, positionMax: 14)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 18, positionMax: 19)
        wallPositions.append(100)
        wallPositions.append(110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 7, positionMax: 8)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 17, positionMax: 18)
        wallPositions.append(100)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 106, positionMax: 107)
        wallPositions.append(110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 4, positionMax: 5)
        nonGiftedFragileWallPositions.append(10)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 16, positionMax: 17)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 104)
        wallPositions.append(110)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 2)
        nonGiftedFragileWallPositions.append(13)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 15, positionMax: 16)
        wallPositions.append(100)
        wallPositions.append(110)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 14, positionMax: 15)
        wallPositions.append(100)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 105, positionMax: 106)
        wallPositions.append(110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 4, positionMax: 5)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 13, positionMax: 14)
        wallPositions.append(100)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 108, positionMax: 110)
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
        wallPositions.append(0)
        nonGiftedFragileWallPositions.append(1)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 12, positionMax: 13)
        wallPositions.append(100)
        let characterEnd = CharacterEndBlock(isRightOriented: false)
        lineBlocks.append(characterEnd)
        lineBlocksPositions.append([109])
        wallPositions.append(110)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 7, positionMax: 8)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 10, positionMax: 12)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 16, positionMax: 25)
        wallPositions.append(100)
        wallPositions.append(110)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 10, positionMax: 11)
        wallPositions.append(25)
        wallPositions.append(100)
        wallPositions.append(110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 5)
        wallPositions.append(10)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 13, positionMax: 22)
        wallPositions.append(25)
        wallPositions.append(100)
        wallPositions.append(110)
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
        let monster834 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster834)
        lineBlocksPositions.append([4])
        nonGiftedFragileWallPositions.append(8)
        wallPositions.append(10)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 12, positionMax: 13)
        let switch8314 = SwitchBlock(1)
        lineBlocks.append(switch8314)
        lineBlocksPositions.append([14])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 15, positionMax: 22)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 24, positionMax: 25)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 1)
        wallPositions.append(10)
        wallPositions.append(13)
        wallPositions.append(24)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 10, positionMax: 11)
        wallPositions.append(13)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 20, positionMax: 24)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 5)
        wallPositions.append(10)
        wallPositions.append(13)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 23, positionMax: 24)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
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
        wallPositions.append(10)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 12, positionMax: 20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 23, positionMax: 24)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 7, positionMax: 8)
        wallPositions.append(10)
        let gate7813 = GateBlock(giftNumber: 2, switchNumber: 0)
        lineBlocks.append(gate7813)
        lineBlocksPositions.append([13])
        ballPositions.append(15)
        let monster7818 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster7818)
        lineBlocksPositions.append([18])
        let gate7820 = GateBlock(giftNumber: 2, switchNumber: 0)
        lineBlocks.append(gate7820)
        lineBlocksPositions.append([20])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 22, positionMax: 24)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(ball)
        lineBlocksPositions.append(ballPositions)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 4)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 8, positionMax: 13)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 20, positionMax: 24)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 1)
        let gate763 = GateBlock(giftNumber: 0, switchNumber: 1)
        lineBlocks.append(gate763)
        lineBlocksPositions.append([3])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 9, positionMax: 11)
        nonGiftedFragileWallPositions.append(15)
        giftedFragileWallPositions.append(18)
        wallPositions.append(20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
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
        wallPositions.append(3)
        let monster7510 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster7510)
        lineBlocksPositions.append([10])
        wallPositions.append(20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 2, positionMax: 6)
        wallPositions.append(20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
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
        wallPositions.append(6)
        wallPositions.append(20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 4, positionMax: 6)
        wallPositions.append(20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
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
        wallPositions.append(6)
        wallPositions.append(20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 2)
        wallPositions.append(6)
        wallPositions.append(20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 6, positionMax: 20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 3, positionMax: 4)
        wallPositions.append(20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 6, positionMax: 8)
        wallPositions.append(20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 10, positionMax: 12)
        nonGiftedFragileWallPositions.append(14)
        nonGiftedFragileWallPositions.append(16)
        nonGiftedFragileWallPositions.append(18)
        wallPositions.append(20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 5)
        let monster6511 = MonsterBlock(gift: false, moves: 1)
        lineBlocks.append(monster6511)
        lineBlocksPositions.append([11])
        wallPositions.append(20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
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
        let monster643 = MonsterBlock(gift: true, moves: 2)
        lineBlocks.append(monster643)
        lineBlocksPositions.append([3])
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 14, positionMax: 18)
        wallPositions.append(20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
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
        giftedFragileWallPositions.append(11)
        wallPositions.append(20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(giftedFragileWall)
        lineBlocksPositions.append(giftedFragileWallPositions)
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
        wallPositions.append(20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
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
        nonGiftedFragileWallPositions.append(14)
        nonGiftedFragileWallPositions.append(16)
        nonGiftedFragileWallPositions.append(18)
        wallPositions.append(20)
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 100, positionMax: 110)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        lineBlocks.append(nonGiftedFragileWall)
        lineBlocksPositions.append(nonGiftedFragileWallPositions)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 110)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 110)
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
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 110)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line44 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line44)
        
        let levelProperties = CustomizableProperties.shared.levelsProperties[5]
        super.init(
            title: levelProperties.title,
            lines: levelLines,
            gifts: levelProperties.gifts,
            environment: levelProperties.environment
        )
    }
}
