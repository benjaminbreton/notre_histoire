//
//  GameScene.swift
//  jv3
//
//  Created by Benjamin Breton on 17/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    // MARK: - Properties
    
    let game = Game()
    var level: Level?
    var character: CharacterSprite?
    var characterEnd: CharacterEndSprite?
    var textPresentation: [SKNode]? = nil
    var textHandler: (() -> Void)? = nil
    var camTimer: Timer?
    var gates: [GateSprite] = []
    var switchGates: [SwitchSprite] = []
    var openTeleporters: [TeleporterSprite] = []
    var closedTeleporters: [TeleporterSprite] = []
    var controllerDelegate: SceneToControllerDelegate?
    var pauseButton: PauseSprite?
    var background: SKSpriteNode?
    
    // MARK: - Add Sprite
    
    func addSprite(lineIndex: Int, blockIndex: Int, block: Block) {
        let x = CGFloat(blockIndex)
        let y = CGFloat(lineIndex)
        let sprite: Sprite
        switch block.type {
        case .character:
            let character = CharacterSprite(x, y, block: block)
            self.character = character
            sprite = character
        case .fragileWall:
            sprite = FragileWallSprite(x, y, block: block)
        case .monster:
            if block is MonsterBlock {
                if let moves = block.monsterMoves {
                    let monster = MonsterSprite(x, y, moves: CGFloat(moves), block: block)
                    monster.move()
                    sprite = monster
                } else {
                    let monster = MonsterSprite(x, y, moves: 1, block: block)
                    monster.move()
                    sprite = monster
                }
            } else {
                let monster = BossMonsterSprite(x, y, block: block)
                sprite = monster
            }
        case .wall:
            sprite = WallSprite(x, y, block: block)
        case .gate:
            let gate = block as! GateBlock
            let number: String
            switch gate.giftNumber {
            case 1:
                number = "❶"
            case 2:
                number = "❷"
            case 3:
                number = "❸"
            case 4:
                number = "❹"
            case 5:
                number = "❺"
            default:
                number = "◘"
            }
            let image = number.inImage()
            let environment = Game.levels[Game.levelInProgress].environment
            let numberSprite = SKSpriteNode(imageNamed: environment.wall)
            if let verifiedImage = image {
                let texture = SKTexture(image: verifiedImage)
                numberSprite.texture = texture
            }
            sprite = GateSprite(x, y, block: block)
            numberSprite.position = CGPoint(x: sprite.position.x, y: sprite.position.y + sprite.size.height)
            numberSprite.zPosition = 1
            addChild(numberSprite)
            if let gateSprite = sprite as? GateSprite {
                gates.append(gateSprite)
            }
        case .switchGate:
            sprite = SwitchSprite(x, y, block: block)
            if let switchSprite = sprite as? SwitchSprite {
                switchGates.append(switchSprite)
            }
        case .ball:
            sprite = BallSprite(x, y, block: block)
        case .gun:
            guard let gunBlock = block as? GunBlock else { return }
            let gunSprite = GunSprite(x, y, gunBlock: gunBlock)
            gunSprite.delegate = self
            sprite = gunSprite
        case .teleporter:
            guard let teleporterBlock = block as? TeleporterBlock else { return }
            let teleporterSprite = TeleporterSprite(x, y, teleporterBlock: teleporterBlock)
            sprite = teleporterSprite
            if teleporterBlock.isOpen {
                openTeleporters.append(teleporterSprite)
            } else {
                closedTeleporters.append(teleporterSprite)
            }
        case .characterEnd:
            guard let characterBlock = block as? CharacterEndBlock else { return }
            let characterEnd = CharacterEndSprite(x, y, characterBlock: characterBlock)
            sprite = characterEnd
            self.characterEnd = characterEnd
        }
        addChild(sprite)
    }
    
    // MARK: - didMove
    
    override func didMove(to view: SKView) {
        level = Game.levels[Game.levelInProgress]
        // level
        if let verifiedLevel = level {
            if verifiedLevel.lines.count > 0 {
                for lineIndex in -6 ... -1 {
                    let line = verifiedLevel.lines[0]
                    if line.blocks.count > 0 {
                        for blockIndex in 0...line.blocks.count - 1 {
                            if let block = line.blocks[blockIndex] {
                                addSprite(lineIndex: lineIndex, blockIndex: blockIndex, block: block)
                            }
                        }
                    }
                }
                for lineIndex in 0...verifiedLevel.lines.count - 1 {
                    let line = verifiedLevel.lines[lineIndex]
                    if line.blocks.count > 0 {
                        for blockIndex in 0...line.blocks.count - 1 {
                            if let block = line.blocks[blockIndex] {
                                addSprite(lineIndex: lineIndex, blockIndex: blockIndex, block: block)
                            }
                        }
                    }
                }
            }
        }
        // gates
        if switchGates.count > 0 {
            for switchSprite in switchGates {
                if gates.count > 0 {
                    for gate in gates {
                        guard let gateBlock = gate.block as? GateBlock else {
                            return
                        }
                        guard let switchBlock = switchSprite.block as? SwitchBlock else {
                            return
                        }
                        if gateBlock.switchNumber == switchBlock.switchNumber {
                            switchSprite.gate = gate
                            break
                        }
                    }
                }
            }
        }
        // teleporters
        if openTeleporters.count > 0 {
            for teleporter in openTeleporters {
                guard let openBlock = teleporter.block as? TeleporterBlock else { return }
                for closedTeleporter in closedTeleporters {
                    guard let closedBlock = closedTeleporter.block as? TeleporterBlock else { return }
                    if openBlock.index == closedBlock.index {
                        teleporter.closeTeleporterPosition = closedTeleporter.destinationPosition
                        break
                    }
                }
            }
            openTeleporters.removeAll()
            closedTeleporters.removeAll()
        }
        // cam
        let cam = SKCameraNode()
        cam.position = CGPoint(x: size.width / 2,
                               y: size.height / 2)
        addChild(cam)
        camera = cam
        // pause
        let pause = PauseSprite()
        pause.isHidden = true
        addChild(pause)
        pauseButton = pause
        camTimer = Timer.scheduledTimer(timeInterval: 0.0025, target: self, selector: #selector(moveCam), userInfo: nil, repeats: true)
        physicsWorld.contactDelegate = self
        
        backgroundColor = .white
        // background
        let environment = Game.levels[Game.levelInProgress].environment
        let background = SKSpriteNode(imageNamed: environment.background)
        background.size = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        background.zPosition = -5
        background.alpha = 0.5
        background.position = CGPoint(x: 0, y: 0)
        addChild(background)
        self.background = background
        
        // MARK: - Level 1 explanations
        
        if Game.playerDidSeeIntro == false {
            let playingPlayer = CustomizableProperties.shared.playingCharacterProperties
            let watchingPlayer = CustomizableProperties.shared.watchingCharacterProperties
            let answer18: () -> Void = {
                self.textPresentation(
                    title: watchingPlayer.name,
                    bubble: watchingPlayer.image,
                    text: "Voilà, j'ai fait le tour. Bonne chance \(playingPlayer.nickname), je t'attends là !... Parce que j'ai pas le choix...",
                    completion: {
                    Game.playerDidSeeIntro = true
                    UserDefaults.standard.set(true, forKey: "intro")
                })
            }
            let answer17: () -> Void = {
                self.textPresentation(
                    title: watchingPlayer.name,
                    bubble: watchingPlayer.image,
                    text: "Donc si tu souhaites faire un seul pas, tu dois appuyer deux fois de suite en bas à gauche si tu souhaites faire un pas à gauche, ou deux fois de suite en bas à droite si tu souhaites faire un pas à droite.",
                    completion: {
                    answer18()
                })
            }
            let answer16: () -> Void = {
                self.textPresentation(
                    title: watchingPlayer.name,
                    bubble: watchingPlayer.image,
                    text: "Mais attention, ton personnage avance tout seul, pas besoin de rester appuyé. Par exemple si tu appuies une fois en bas à droite, ton personnage continuera d'avancer à droite tout seul. Il s'arrêtera si tu rappuies une seconde fois à droite, ou si tu appuies à gauche pour changer de direction.",
                    completion: {
                    answer17()
                })
            }
            let answer14: () -> Void = {
                self.textPresentation(
                    title: watchingPlayer.name,
                    bubble: watchingPlayer.image,
                    text: "Et en bas, si tu appuies à gauche ça te fera avancer à gauche ; si tu appuies à droite ça te fera avancer à droite. Logique.",
                    completion: {
                    answer16()
                })
            }
            let answer13: () -> Void = {
                self.textPresentation(
                    title: watchingPlayer.name,
                    bubble: watchingPlayer.image,
                    text: "Quel que soit l'endroit où tu appuies en haut ça te fera sauter.",
                    completion: {
                    answer14()
                })
            }
            let answer12: () -> Void = {
                self.textPresentation(
                    title: watchingPlayer.name,
                    bubble: watchingPlayer.image,
                    text: "Imagine que l'écran est divisé en deux au niveau du ventre de ton personnage. En haut de ton ventre ça te permet de sauter, en bas de ton ventre ça te permet d'avancer.",
                    completion: {
                    answer13()
                })
            }
            let answer11: () -> Void = {
                self.textPresentation(
                    title: watchingPlayer.name,
                    bubble: watchingPlayer.image,
                    text: "Une dernière chose : voici les consignes pour que tu puisses avancer.",
                    completion: {
                    answer12()
                })
            }
            let answer10: () -> Void = {
                self.textPresentation(
                    title: playingPlayer.name,
                    bubble: playingPlayer.image,
                    text: "Ca marche ! C'est parti !",
                    completion: {
                    answer11()
                })
            }
            let answer9: () -> Void = {
                self.textPresentation(
                    title: watchingPlayer.name,
                    bubble: watchingPlayer.image,
                    text: "Les souvenirs servent à ouvrir des portes. Si tu regardes au-dessus de la grille de ma cage il y a le chiffre 5. Cela signifie que pour l'ouvrir tu dois avoir trouvé les 5 souvenirs.",
                    completion: {
                    answer10()
                })
            }
            let answer8: () -> Void = {
                self.textPresentation(
                    title: playingPlayer.name,
                    bubble: playingPlayer.image,
                    text: "Ok. Et après j'en fais quoi des souvenirs ?",
                    completion: {
                    answer9()
                })
            }
            let answer7c: () -> Void = {
                self.textPresentation(
                    title: watchingPlayer.name,
                    bubble: watchingPlayer.image,
                    text: "Cachés dans le niveau. Par exemple, je sais qu'il y en a un près de toi, dans l'espèce de bloc de briques à moitié cassé. Quand les blocs sont à moitié cassés, je crois que tu peux les détruire en sautant dessous.",
                    completion: {
                    answer8()
                })
            }
            let answer7b: () -> Void = {
                self.textPresentation(
                    title: playingPlayer.name,
                    bubble: playingPlayer.image,
                    text: "Ok, mais ils sont où ces souvenirs ?",
                    completion: {
                    answer7c()
                })
            }
            let answer7: () -> Void = {
                self.textPresentation(
                    title: watchingPlayer.name,
                    bubble: watchingPlayer.image,
                    text: "Alors tu dois parcourir le niveau pour retrouver des souvenirs concernant notre vie de couple. Dans chaque niveau il y a 5 souvenirs à retrouver.",
                    completion: {
                    answer7b()
                })
            }
            let answer6: () -> Void = {
                self.textPresentation(
                    title: playingPlayer.name,
                    bubble: playingPlayer.image,
                    text: "Ok... Et donc je dois faire quoi pour te délivrer ?",
                    completion: {
                    answer7()
                })
            }
            let answer5: () -> Void = {
                self.textPresentation(
                    title: watchingPlayer.name,
                    bubble: watchingPlayer.image,
                    text: "Bah ouais apparemment !",
                    completion: {
                    answer6()
                })
            }
            let answer4: () -> Void = {
                self.textPresentation(
                    title: playingPlayer.name,
                    bubble: playingPlayer.image,
                    text: "Ah je dois en plus me débrouiller pour te délivrer ?",
                    completion: {
                    answer5()
                })
            }
            let answer3: () -> Void = {
                self.textPresentation(
                    title: watchingPlayer.name,
                    bubble: watchingPlayer.image,
                    text: "J'en sais rien moi non plus, mais je pense que j'y suis pour que tu me délivres...'",
                    completion: {
                    answer4()
                })
            }
            let answer2: () -> Void = {
                self.textPresentation(
                    title: watchingPlayer.name,
                    bubble: watchingPlayer.image,
                    text: "C'est une très bonne question !",
                    completion: {
                    answer3()
                })
            }
            let answer1: () -> Void = {
                self.textPresentation(
                    title: playingPlayer.name,
                    bubble: playingPlayer.image,
                    text: "Salut \(watchingPlayer.nickname)... Mais qu'est-ce que tu fous dans une cage ?",
                    completion: {
                    answer2()
                })
            }
            let start: () -> Void = {
                self.textPresentation(
                    title: watchingPlayer.name,
                    bubble: watchingPlayer.image,
                    text: "Salut \(playingPlayer.nickname) !",
                    completion: {
                answer1()
                })
            }
            textPresentation = []
            textHandler = start
        }
    }
    
    // MARK: - Touches
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let presentation = textPresentation {
            for sprite in presentation {
                sprite.removeFromParent()
            }
            scene?.isPaused = false
            textPresentation = nil
            if let handler = textHandler {
                handler()
            }
        } else {
            if isPaused == false {
                if let point = touches.first?.location(in: self) {
                    if let pause = pauseButton {
                        let minY = pause.position.y - pause.size.height / 2
                        let maxY = pause.position.y + pause.size.height / 2
                        let minX = pause.position.x - pause.size.width / 2
                        let maxX = pause.position.x + pause.size.width / 2
                        if point.x > minX && point.x < maxX && point.y > minY && point.y < maxY {
                            isPaused = true
                            pause.isHidden = true
                            controllerDelegate?.pause()
                            let name = Notification.Name("endPause")
                            NotificationCenter.default.addObserver(self, selector: #selector(endPause), name: name, object: nil)
                        } else {
                            checkCharacterMoves(point)
                        }
                    } else {
                        checkCharacterMoves(point)
                    }
                }
            } else {
                controllerDelegate?.resumeLevel()
            }
        }
    }
    
    // MARK: - Character moves
    
    private func checkCharacterMoves(_ point: CGPoint) {
        if let character = self.character {
            if point.y > character.position.y {
                character.isJumping = true
            } else {
                if point.x < character.position.x {
                    if character.move != .left {
                        character.move = .left
                    } else {
                        character.stopMoving()
                    }
                } else {
                    if character.move != .right {
                        character.move = .right
                    } else {
                        character.stopMoving()
                    }
                }
            }
        }
    }
    
    // MARK: - Camera, pause, switchGate, character fall
    
    @objc func moveCam() {
        if switchGates.count > 0 {
            for switchSprite in switchGates {
                if switchSprite.isOn {
                    var remainingNodes: [SKPhysicsBody] = []
                    if let bodies = switchSprite.physicsBody?.allContactedBodies() {
                        for body in bodies {
                            if body.categoryBitMask == PhysicsCategory.character {
                                remainingNodes.append(body)
                            }
                        }
                    }
                    switchSprite.nodesOnSwitch = remainingNodes
                }
            }
        }
        if let character = self.character {
            if character.position.y < -character.size.height * 5 {
                guard let camTimer = self.camTimer else { return }
                camTimer.invalidate()
                characterLose()
            } else {
                if let cam = camera {
                    if cam.position.y > 0 {
                        cam.position = character.position
                        if let pause = pauseButton {
                            pause.position.x = cam.position.x
                            pause.position.y = cam.position.y + UIScreen.main.bounds.height / 2 - pause.size.height
                            pause.isHidden = isPaused
                        }
                        if let background = self.background {
                            background.position = cam.position
                        }
                    }
                }
                
            }
        }
    }
    
    @objc private func endPause() {
        isPaused = false
    }
    
    // MARK: - TextPresentation
    
    private func textPresentation(title: String, bubble: String, text: String, completion handlerA: (() -> Void)?) {
        textHandler = handlerA
        presentText(title: title, bubble: bubble, text: text)
    }
    private func presentText(title: String, bubble: String, text: String) {
        guard let character = self.character else {
            return
        }
        scene?.isPaused = true
        character.stopMoving()
        
        // presentation
        
        let background = SKSpriteNode(imageNamed: "giftPresentation")
        background.size = CGSize(width: frame.size.width * 0.8, height: frame.size.height * 0.8)
        background.position = character.position
        background.zPosition = 2
        
        let title = SKLabelNode(text: formattedText(title))
        title.fontSize = 30 * CGFloat(System.resize)
        title.fontColor = .white
        title.position = CGPoint(x: background.position.x + frame.size.width / 9, y: background.position.y + frame.size.height / 3.8)
        title.horizontalAlignmentMode = .center
        title.verticalAlignmentMode = .center
        title.zPosition = 3
        title.numberOfLines = 0
        
        let image = SKLabelNode(text: bubble)
        image.fontSize = 60 * CGFloat(System.resize)
        image.position = CGPoint(x: background.position.x - frame.size.width / 3.75, y: background.position.y + frame.size.height / 6)
        image.zPosition = 3
        image.numberOfLines = 0
        
        let description = SKLabelNode(text: formattedText(text))
        description.horizontalAlignmentMode = .left
        description.verticalAlignmentMode = .top
        description.fontSize = 18 * CGFloat(System.resize)
        description.position = CGPoint(x: background.position.x - frame.size.width / 3, y: background.position.y + frame.size.height / 10)
        description.zPosition = 3
        description.numberOfLines = 3
        
        
        addChild(background)
        addChild(title)
        addChild(image)
        addChild(description)
        textPresentation = [background, title, image, description]
    }
    private func formattedText(_ textToBeFormatted: String) -> String {
        let split = textToBeFormatted.split(separator: " ").map({ "\($0)" })
        var text: String = ""
        var count: Int = 0
        let maxCount: Int = Int(50 * System.resize)
        for word in split {
            if count + word.count > maxCount {
                count = word.count
                text += "\n\(word)"
            } else {
                count += word.count
                text += " \(word)"
            }
        }
        return text
    }
    
    // MARK: - Gifts
    
    func giftAppearance(_ giver: Sprite) {
        guard let level = self.level else {
            return
        }
        // gift appearance
        let x: CGFloat
        let y: CGFloat
        if let _ = giver as? BossMonsterSprite {
            x = giver.blockPositionX - 2
            y = giver.blockPositionY + 2
        } else {
            x = giver.blockPositionX
            y = giver.blockPositionY + 3
        }
        let giftSprite = GiftSprite(x, y, gift: level.gifts[level.giftInProgress])
        addChild(giftSprite)
        level.giftInProgress += 1
    }
    func presentGift(_ sprite: GiftSprite) {
        // presentation
        let gift = sprite.gift
        textPresentation(title: gift.title, bubble: gift.image, text: gift.description, completion: nil)
        Game.levels[Game.levelInProgress].readenGifts += 1
    }
    func characterDidCollideWithGift(_ gift: GiftSprite) {
        gift.removeFromParent()
        presentGift(gift)
    }
    
    // MARK: - Collisions
    
    func didBegin(_ contact: SKPhysicsContact) {
        if contact.bodyA.node is BulletSprite || contact.bodyB.node is BulletSprite {
            if let bullet = contact.bodyA.node as? BulletSprite {
                guard let node = contact.bodyB.node as? Sprite else { return }
                bulletDidCollideWithSomething(bullet: bullet, node: node)
            }
            if let bullet = contact.bodyB.node as? BulletSprite {
                guard let node = contact.bodyA.node as? Sprite else { return }
                bulletDidCollideWithSomething(bullet: bullet, node: node)
            }
        }
        if contact.bodyA.node is SwitchSprite || contact.bodyB.node is SwitchSprite {
            if let bodyA = contact.bodyA.node as? SKSpriteNode, let bodyB = contact.bodyB.node as? SKSpriteNode {
                switchIsCollided(nodeA: bodyA, nodeB: bodyB)
            }
        }
        if contact.bodyA.node is BallSprite && contact.bodyB.node is MonsterSprite {
            guard let monster = contact.bodyB.node as? MonsterSprite else { return }
            killMonster(monster)
        }
        if contact.bodyB.node is BallSprite && contact.bodyA.node is MonsterSprite {
            guard let monster = contact.bodyA.node as? MonsterSprite else { return }
            killMonster(monster)
        }
        if contact.bodyA.categoryBitMask != 0b100 && contact.bodyA.node is Sprite && contact.bodyB.node is CharacterSprite {
            guard let node = contact.bodyA.node as? Sprite else {
                return
            }
            collisionSwitch(node)
        }
        if contact.bodyB.categoryBitMask != 0b100 && contact.bodyB.node is Sprite && contact.bodyA.node is CharacterSprite {
            guard let node = contact.bodyB.node as? Sprite else {
                return
            }
            collisionSwitch(node)
        }
        if contact.bodyA.categoryBitMask == 0b100 && contact.bodyB.categoryBitMask == 0b100 {
            if let characterEnd = contact.bodyA.node as? CharacterEndSprite {
                endLevel(characterEnd)
            }
            if let characterEnd = contact.bodyB.node as? CharacterEndSprite {
                endLevel(characterEnd)
            }
        }
    }
    func collisionSwitch(_ node: Sprite) {
        if let wall = node as? FragileWallSprite {
            characterDidCollideWithFragileWall(wall)
        }
        if let monster = node as? BossMonsterSprite {
            characterDidCollideWithMonster(monster)
        } else if let monster = node as? MonsterSprite {
            characterDidCollideWithMonster(monster)
        }
        if let gift = node as? GiftSprite {
            characterDidCollideWithGift(gift)
        }
        if let gate = node as? GateSprite {
            characterDidCollideWithGate(gate)
        }
        if let teleporter = node as? TeleporterSprite {
            characterDidCollideWithTeleporter(teleporter)
        }
        
    }
    
    // MARK: - Fragile wall
    func characterDidCollideWithFragileWall(_ wall: FragileWallSprite) {
        if let character = self.character {
            if character.position.y < wall.position.y {
                fragileWallOpening(wall)
            }
        }
    }
    func fragileWallOpening(_ wall: FragileWallSprite) {
        guard let wallBlock = wall.block as? FragileWallBlock else {
            return
        }
        if wallBlock.gift == true {
            giftAppearance(wall)
        }
        wall.removeFromParent()
    }
    
    // MARK: - Monster
    
    func characterDidCollideWithMonster(_ monster: MonsterSprite) {
        if let character = self.character {
            if Int(character.position.y) > Int(monster.position.y) {
                killMonster(monster)
            } else {
                characterLose()
            }
        }
        
    }
    func killMonster(_ monster: MonsterSprite) {
        if let _ = monster.block as? BossMonsterBlock {
            giftAppearance(monster)
            monster.removeFromParent()
        } else if let monsterBlock = monster.block as? MonsterBlock {
            if monsterBlock.gift == true {
                giftAppearance(monster)
            }
            monster.removeFromParent()
        }
    }
    
    // MARK: - Bullet
    
    func bulletDidCollideWithSomething(bullet: BulletSprite, node: Sprite) {
        if node is CharacterSprite {
            characterLose()
        }
        if node is BulletSprite {
            node.removeFromParent()
        }
        if let monster = node as? MonsterSprite {
            killMonster(monster)
        }
        if let wall = node as? FragileWallSprite {
            fragileWallOpening(wall)
        }
        if node is GunSprite {
            bullet.zPosition = 0
        } else {
            bullet.removeFromParent()
        }
    }
    
    // MARK: - Gate & switch
    
    func characterDidCollideWithGate(_ gate: GateSprite) {
        guard let level = self.level else {
            return
        }
        guard let character = self.character else {
            return
        }
        if gate.isOpen == false {
            character.stopMoving()
        }
        guard let gateBlock = gate.block as? GateBlock else {
            return
        }
        if gateBlock.giftNumber > 0 {
            if level.readenGifts >= gateBlock.giftNumber {
                isPaused = true
                gate.open {
                    isPaused = false
                }
            }
        }
    }
    func switchIsCollided(nodeA: SKSpriteNode, nodeB: SKSpriteNode) {
        if let switchSprite = nodeA as? SwitchSprite {
            turnOnSwitch(switchSprite: switchSprite, node: nodeB)
        }
        if let switchSprite = nodeB as? SwitchSprite {
            turnOnSwitch(switchSprite: switchSprite, node: nodeA)
        }
    }
    private func turnOnSwitch(switchSprite: SwitchSprite, node: SKSpriteNode) {
        if let body = node.physicsBody {
            switchSprite.nodesOnSwitch.append(body)
        }
    }
    
    // MARK: - Teleporter
    
    func characterDidCollideWithTeleporter(_ teleporter: TeleporterSprite) {
        if let destination = teleporter.closeTeleporterPosition, let character = self.character {
            if character.position.y > teleporter.position.y {
                isPaused = true
                character.stopMoving()
                let action = SKAction.move(to: destination, duration: 0)
                character.run(action)
                camera?.run(action)
                isPaused = false
            }
            
        }
    }
    
    // MARK: - End Level
    
    func characterLose() {
        guard let character = self.character else { return }
        character.removeFromParent()
        self.controllerDelegate?.lost()
    }
    func endLevel(_ characterEnd: CharacterEndSprite) {
        character?.stopMoving()
        let heart = HeartSprite(characterEnd)
        addChild(heart)
        heart.move()
        let action = SKAction.wait(forDuration: 3)
        run(action, completion: {
            if Game.levelInProgress < 10 {
                self.controllerDelegate?.win()
            } else {
                let playingCharacter = CustomizableProperties.shared.playingCharacterProperties
                let watchingCharacter = CustomizableProperties.shared.watchingCharacterProperties
                let newLevel: () -> Void = {
                    let action = SKAction.wait(forDuration: 3)
                    self.controllerDelegate?.prepareProposal()
                    self.run(action, completion: {
                        self.controllerDelegate?.showProposal()
                        self.textPresentation = []
                        self.textHandler = {
                            self.controllerDelegate?.proposal()
                        }
                    })
                }
                let answer4: () -> Void = {
                    self.textPresentation(
                        title: watchingCharacter.name,
                        bubble: watchingCharacter.image,
                        text: "Pour la suite, c'est au vrai \(watchingCharacter.name) de t'expliquer comment se joue ce niveau. Quand il te le dira, appuie sur l'écran pour lancer le niveau. Mais seulement quand il te le dira !", completion: {
                        newLevel()
                    })
                }
                let answer3: () -> Void = {
                    self.textPresentation(
                        title: watchingCharacter.name,
                        bubble: watchingCharacter.image,
                        text: "En effet. Ce niveau se joue à deux.",
                        completion: {
                        answer4()
                    })
                }
                let answer2: () -> Void = {
                    self.textPresentation(
                        title: playingCharacter.name,
                        bubble: playingCharacter.image,
                        text: "Ok... Mais du coup je n'ai pas à te sortir d'une cage dans ce niveau ?",
                        completion: {
                        answer3()
                    })
                }
                let answer1: () -> Void = {
                    self.textPresentation(
                        title: watchingCharacter.name,
                        bubble: watchingCharacter.image,
                        text: "Bah non, le niveau ne fait que commencer !",
                        completion: {
                        answer2()
                    })
                }
                self.textPresentation(
                    title: playingCharacter.name,
                    bubble: playingCharacter.image,
                    text: "Euh... c'est tout ?",
                    completion: {
                answer1()
                })
            }
        })
    }
}

// MARK: - Gun delegate

extension GameScene: GunDelegate {
    func characterPosition() -> CGPoint? {
        if let character = self.character {
            return character.position
        }
        return nil
    }
    func addBullet(_ bullet: BulletSprite) {
        addChild(bullet)
        bullet.move()
    }
}

