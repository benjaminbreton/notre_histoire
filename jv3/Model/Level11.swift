//
//  Level11.swift
//  jv3
//
//  Created by Benjamin Breton on 09/09/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
class Level11: Level {
    init() {
        // get date of the day
        let date = Date()
        let dateFormat = DateFormatter()
        dateFormat.calendar = Calendar.current
        dateFormat.timeZone = .current
        dateFormat.dateStyle = .full
        dateFormat.timeStyle = .none
        dateFormat.locale = Locale(identifier: "FR-fr")
        let title: String = dateFormat.string(from: date)
        
        
        
        
        // Level 11
        let wall = WallBlock()
        let character = CharacterBlock()
        
        var wallPositions: [Int] = []
        var lineBlocks: [Block] = []
        var lineBlocksPositions: [[Int]] = []
        
        let levelLength = 31
        var levelLines: [BlockLine] = []
        
        // line 0
        wallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 30)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line0 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line0)
        
        // line 1
        wallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        lineBlocks.append(wall)
        lineBlocksPositions.append([0, 30])
        lineBlocks.append(character)
        lineBlocksPositions.append([1])
        let characterEnd = CharacterEndBlock(isRightOriented: false)
        lineBlocks.append(characterEnd)
        lineBlocksPositions.append([29])
        let line1 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line1)
        
        // line 2
        wallPositions = []
        lineBlocks = []
        lineBlocksPositions = []
        wallPositions = Level.addSeveralBlocks(previousArray: wallPositions, positionMin: 0, positionMax: 30)
        lineBlocks.append(wall)
        lineBlocksPositions.append(wallPositions)
        let line2 = BlockLine(blocks: lineBlocks, positions: lineBlocksPositions, length: levelLength - 1)
        levelLines.append(line2)
        

        super.init(title: title, lines: levelLines, gifts: [], environment: .beach)
    }
}
