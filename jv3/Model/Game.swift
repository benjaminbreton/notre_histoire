//
//  Game.swift
//  jv3
//
//  Created by Benjamin Breton on 22/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
import MediaPlayer
class Game {
    static var levels: [Level] = []
    static var beforeLevel11: Int? = nil
    static var levelInProgress = 0
    static var playerDidSeeIntro = false
    static var music: MPMediaEntityPersistentID? = nil
    static var endMusic: MPMediaEntityPersistentID? = nil
    static var canPresentLevel11 = false
    static var canAskForLevel11 = false
    static var blockLevel11 = false
    init() {
        // levels creation
        
        //let level1 = levelessai()
        //levels.append(level1)
    }
    
    
    
}
