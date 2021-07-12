//
//  CustomizableProperties.swift
//  jv3
//
//  Created by Benjamin Breton on 03/07/2021.
//  Copyright © 2021 bb. All rights reserved.
//

import Foundation
struct LevelProperties {
    let title: String
    let environment: Environment
    let gifts: [Gift]
}
struct CharacterProperties {
    let name: String
    let image: String
    let nickname: String
}
class CustomizableProperties {
    static let shared = CustomizableProperties()
    let playingCharacterProperties: CharacterProperties
    let watchingCharacterProperties: CharacterProperties
    let levelsProperties: [LevelProperties]
    private init() {
        playingCharacterProperties = CharacterProperties(
            name: PrivateProperties.playingCharacterName,
            image: "👩🏼",
            nickname: PrivateProperties.playingCharacterNickname
        )
        watchingCharacterProperties = CharacterProperties(
            name: PrivateProperties.watchingCharacterName,
            image: "👨🏼",
            nickname: PrivateProperties.watchingCharacterNickname
        )
        var levelsProperties: [LevelProperties] = []
        // level 1
        levelsProperties.append(
            LevelProperties(
                title: PrivateProperties.level1Title,
                environment: .city,
                gifts: [PrivateProperties.level1Gift1,
                            PrivateProperties.level1Gift2,
                            PrivateProperties.level1Gift3,
                            PrivateProperties.level1Gift4,
                            PrivateProperties.level1Gift5]
            )
        )
        // level 2
        levelsProperties.append(
            LevelProperties(
                title: PrivateProperties.level2Title,
                environment: .castle,
                gifts: [PrivateProperties.level2Gift1,
                            PrivateProperties.level2Gift2,
                            PrivateProperties.level2Gift3,
                            PrivateProperties.level2Gift4,
                            PrivateProperties.level2Gift5]
            )
        )
        // level 3
        levelsProperties.append(
            LevelProperties(
                title: PrivateProperties.level3Title,
                environment: .garden,
                gifts: [PrivateProperties.level3Gift1,
                            PrivateProperties.level3Gift2,
                            PrivateProperties.level3Gift3,
                            PrivateProperties.level3Gift4,
                            PrivateProperties.level3Gift5]
            )
        )
        // level 4
        levelsProperties.append(
            LevelProperties(
                title: PrivateProperties.level4Title,
                environment: .forest,
                gifts: [PrivateProperties.level4Gift1,
                            PrivateProperties.level4Gift2,
                            PrivateProperties.level4Gift3,
                            PrivateProperties.level4Gift4,
                            PrivateProperties.level4Gift5]
            )
        )
        // level 5
        levelsProperties.append(
            LevelProperties(
                title: PrivateProperties.level5Title,
                environment: .beach,
                gifts: [PrivateProperties.level5Gift1,
                            PrivateProperties.level5Gift2,
                            PrivateProperties.level5Gift3,
                            PrivateProperties.level5Gift4,
                            PrivateProperties.level5Gift5]
            )
        )
        // level 6
        levelsProperties.append(
            LevelProperties(
                title: PrivateProperties.level6Title,
                environment: .city,
                gifts: [PrivateProperties.level6Gift1,
                            PrivateProperties.level6Gift2,
                            PrivateProperties.level6Gift3,
                            PrivateProperties.level6Gift4,
                            PrivateProperties.level6Gift5]
            )
        )
        // level 7
        levelsProperties.append(
            LevelProperties(
                title: PrivateProperties.level7Title,
                environment: .garden,
                gifts: [PrivateProperties.level7Gift1,
                            PrivateProperties.level7Gift2,
                            PrivateProperties.level7Gift3,
                            PrivateProperties.level7Gift4,
                            PrivateProperties.level7Gift5]
            )
        )
        // level 8
        levelsProperties.append(
            LevelProperties(
                title: PrivateProperties.level8Title,
                environment: .castle,
                gifts: [PrivateProperties.level8Gift1,
                            PrivateProperties.level8Gift2,
                            PrivateProperties.level8Gift3,
                            PrivateProperties.level8Gift4,
                            PrivateProperties.level8Gift5]
            )
        )
        // level 9
        levelsProperties.append(
            LevelProperties(
                title: PrivateProperties.level9Title,
                environment: .city,
                gifts: [PrivateProperties.level9Gift1,
                            PrivateProperties.level9Gift2,
                            PrivateProperties.level9Gift3,
                            PrivateProperties.level9Gift4,
                            PrivateProperties.level9Gift5]
            )
        )
        // level 10
        levelsProperties.append(
            LevelProperties(
                title: PrivateProperties.level10Title,
                environment: .beach,
                gifts: [PrivateProperties.level10Gift1,
                            PrivateProperties.level10Gift2,
                            PrivateProperties.level10Gift3,
                            PrivateProperties.level10Gift4,
                            PrivateProperties.level10Gift5]
            )
        )
        self.levelsProperties = levelsProperties
        
    }
    
    
}
