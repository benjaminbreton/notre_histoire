//
//  Level.swift
//  jv3
//
//  Created by Benjamin Breton on 22/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
import MediaPlayer
class Level {
    let lines: [BlockLine]
    let gifts: [Gift]
    var giftInProgress: Int = 0
    var readenGifts: Int = 0
    var music: MPMediaEntityPersistentID? = nil
    let title: String
    let environment: Environment
    init(title: String, lines: [BlockLine], gifts: [Gift], environment: Environment) {
        self.title = title
        self.lines = lines
        self.gifts = gifts
        self.environment = environment
    }
    
    static func addSeveralBlocks(previousArray: [Int], positionMin: Int, positionMax: Int) -> [Int] {
        var array = previousArray
        for adding in positionMin...positionMax {
            array.append(adding)
        }
        return array
    }
}




class levelessai: Level {
    init(_ title: String) {
        // Level xxx

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

         

        let levelLength = 68

        var levelLines: [BlockLine] = []

         

        // line 0

        wallPositions = []

        characterPosition = []

        ballPositions = []

        nonGiftedFragileWallPositions = []

        giftedFragileWallPositions = []

        lineBlocks = []

        lineBlocksPositions = []

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 19)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 22, positionMax: 51)

        wallPositions.append(67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 4, positionMax: 9)

        let teleporter9910 = OpenTeleporterBlock(0)

        lineBlocks.append(teleporter9910)

        lineBlocksPositions.append([10])

        wallPositions.append(11)

        let monster9915 = MonsterBlock(gift: false, moves: 3)

        lineBlocks.append(monster9915)

        lineBlocksPositions.append([15])

        let gate9930 = GateBlock(giftNumber: 1, switchNumber: 0)

        lineBlocks.append(gate9930)

        lineBlocksPositions.append([30])

        let monster9933 = MonsterBlock(gift: false, moves: 2)

        lineBlocks.append(monster9933)

        lineBlocksPositions.append([33])

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 37, positionMax: 51)

        wallPositions.append(67)

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

        wallPositions.append(30)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 38, positionMax: 51)

        wallPositions.append(67)

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

        wallPositions.append(23)

        giftedFragileWallPositions.append(24)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 25, positionMax: 26)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 28, positionMax: 30)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 39, positionMax: 42)

        let switch9743 = SwitchBlock(1)

        lineBlocks.append(switch9743)

        lineBlocksPositions.append([43])

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 44, positionMax: 51)

        wallPositions.append(67)

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

        wallPositions.append(26)

        wallPositions.append(28)

        let teleporter9629 = ClosedTeleporterBlock(0)

        lineBlocks.append(teleporter9629)

        lineBlocksPositions.append([29])

        wallPositions.append(30)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 40, positionMax: 42)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 44, positionMax: 55)

        wallPositions.append(67)

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

        wallPositions.append(26)

        wallPositions.append(30)

        let gate9551 = GateBlock(giftNumber: 0, switchNumber: 1)

        lineBlocks.append(gate9551)

        lineBlocksPositions.append([51])

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 57, positionMax: 59)

        wallPositions.append(67)

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

        let gun941 = RightGunBlock(5)

        lineBlocks.append(gun941)

        lineBlocksPositions.append([1])

        wallPositions.append(26)

        wallPositions.append(30)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 38, positionMax: 39)

        wallPositions.append(51)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 61, positionMax: 65)

        wallPositions.append(67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 26, positionMax: 30)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 37, positionMax: 38)

        wallPositions.append(51)

        giftedFragileWallPositions.append(54)

        wallPositions.append(67)

        lineBlocks.append(wall)

        lineBlocksPositions.append(wallPositions)

        lineBlocks.append(giftedFragileWall)

        lineBlocksPositions.append(giftedFragileWallPositions)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 26, positionMax: 27)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 29, positionMax: 30)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 36, positionMax: 37)

        wallPositions.append(51)

        wallPositions.append(67)

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

        wallPositions.append(26)

        wallPositions.append(28)

        wallPositions.append(30)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 35, positionMax: 36)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 40, positionMax: 41)

        wallPositions.append(51)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 58, positionMax: 60)

        wallPositions.append(67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 26, positionMax: 27)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 29, positionMax: 30)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 34, positionMax: 35)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 41, positionMax: 42)

        wallPositions.append(51)

        wallPositions.append(67)

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

        wallPositions.append(26)

        wallPositions.append(28)

        wallPositions.append(30)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 33, positionMax: 34)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 42, positionMax: 43)

        wallPositions.append(51)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 53, positionMax: 55)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 63, positionMax: 65)

        wallPositions.append(67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 26, positionMax: 27)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 29, positionMax: 30)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 32, positionMax: 33)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 43, positionMax: 44)

        wallPositions.append(51)

        nonGiftedFragileWallPositions.append(59)

        wallPositions.append(67)

        lineBlocks.append(wall)

        lineBlocksPositions.append(wallPositions)

        lineBlocks.append(nonGiftedFragileWall)

        lineBlocksPositions.append(nonGiftedFragileWallPositions)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 32)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 44, positionMax: 45)

        wallPositions.append(51)

        wallPositions.append(67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 25)

        ballPositions.append(27)

        let gate8630 = GateBlock(giftNumber: 2, switchNumber: 0)

        lineBlocks.append(gate8630)

        lineBlocksPositions.append([30])

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 45, positionMax: 51)

        nonGiftedFragileWallPositions.append(54)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 59, positionMax: 61)

        giftedFragileWallPositions.append(64)

        wallPositions.append(67)

        lineBlocks.append(wall)

        lineBlocksPositions.append(wallPositions)

        lineBlocks.append(nonGiftedFragileWall)

        lineBlocksPositions.append(nonGiftedFragileWallPositions)

        lineBlocks.append(giftedFragileWall)

        lineBlocksPositions.append(giftedFragileWallPositions)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 25)

        wallPositions.append(30)

        let monster8548 = MonsterBlock(gift: true, moves: 2)

        lineBlocks.append(monster8548)

        lineBlocksPositions.append([48])

        wallPositions.append(51)

        wallPositions.append(67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 25)

        wallPositions.append(30)

        wallPositions.append(51)

        wallPositions.append(67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 25)

        wallPositions.append(30)

        wallPositions.append(51)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 63, positionMax: 65)

        wallPositions.append(67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 25)

        wallPositions.append(30)

        wallPositions.append(51)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 58, positionMax: 60)

        wallPositions.append(67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 30)

        wallPositions.append(51)

        wallPositions.append(67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 30)

        wallPositions.append(51)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 54, positionMax: 56)

        wallPositions.append(67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 30)

        wallPositions.append(51)

        let monster7955 = MonsterBlock(gift: true, moves: 1)

        lineBlocks.append(monster7955)

        lineBlocksPositions.append([55])

        wallPositions.append(67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 30)

        wallPositions.append(51)

        wallPositions.append(67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 30)

        wallPositions.append(51)

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 58, positionMax: 60)

        wallPositions.append(67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 54)

        wallPositions.append(67)

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

        let gate7527 = GateBlock(giftNumber: 5, switchNumber: 0)

        lineBlocks.append(gate7527)

        lineBlocksPositions.append([27])

        let monster7531 = MonsterBlock(gift: false, moves: 1)

        lineBlocks.append(monster7531)

        lineBlocksPositions.append([31])

        let monster7535 = MonsterBlock(gift: false, moves: 1)

        lineBlocks.append(monster7535)

        lineBlocksPositions.append([35])

        let monster7542 = MonsterBlock(gift: false, moves: 5)

        lineBlocks.append(monster7542)

        lineBlocksPositions.append([42])

        let monster7551 = MonsterBlock(gift: false, moves: 3)

        lineBlocks.append(monster7551)

        lineBlocksPositions.append([51])

        wallPositions.append(67)

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

        wallPositions.append(27)

        wallPositions.append(67)

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

        wallPositions.append(27)

        wallPositions.append(67)

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

        wallPositions.append(27)

        wallPositions.append(67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 67)

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

        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 67)

        lineBlocks.append(wall)

        lineBlocksPositions.append(wallPositions)

        let line36 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)

        levelLines.append(line36)
        let gift1 = Gift(title: "xxx", description: "xxx", image: "🦮")
        let gift2 = Gift(title: "xxx", description: "xxx", image: "🖥")
        let gift3 = Gift(title: "xxx", description: "xxx", image: "🎸")
        let gift4 = Gift(title: "xxx", description: "xxx", image: "🎖")
        let gift5 = Gift(title: "xxx", description: "xxx", image: "🤪")
        super.init(title: title, lines: levelLines, gifts: [gift1, gift2, gift3, gift4, gift5], environment: .forest)
    }
}


