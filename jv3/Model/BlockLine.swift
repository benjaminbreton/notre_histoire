//
//  BlockLine.swift
//  jv3
//
//  Created by Benjamin Breton on 22/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
struct BlockLine {
    let blocks: [Block?]
    init(blocks: [Block], positions: [[Int]], length: Int) {
        var blocksInProgress: [Block?] = []
        for _ in 0...length {
            blocksInProgress.append(nil)
        }
        if blocks.count > 0 {
            for blockIndex in 0...blocks.count - 1 {
                if positions[blockIndex].count > 0 {
                    let verifiedPositions = positions[blockIndex]
                    for positionIndex in 0...verifiedPositions.count - 1 {
                        if verifiedPositions[positionIndex] <= length {
                            blocksInProgress[verifiedPositions[positionIndex]] = blocks[blockIndex]
                        }
                    }
                }
            }
        }
        self.blocks = blocksInProgress
    }
}
