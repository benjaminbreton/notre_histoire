//
//  GameViewController.swift
//  jv3
//
//  Created by Benjamin Breton on 17/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import MediaPlayer

enum HeartDesign {
    case red, blue, green, purple, yellow, orange, white
    func change() -> HeartDesign {
        let change = getColor()
        Game.canPresentLevel11 = change == .white && Game.canAskForLevel11 == true
        return change
    }
    private func getColor() -> HeartDesign {
        switch self {
        case .red:
            return .green
        case .green:
            return .blue
        case .blue:
            return .yellow
        case .yellow:
            return .purple
        case .purple:
            return .orange
        case .orange:
            return .white
        case .white:
            return .red
        }
    }

    func getString() -> String {
        switch self {
        case .red:
            return "♥️"
        case .green:
            return "💚"
        case .blue:
            return "💙"
        case .yellow:
            return "💛"
        case .purple:
            return "💜"
        case .orange:
            return "🧡"
        case .white:
            return "🤍"
        }
    }
    
}
protocol SceneToControllerDelegate {
    func lost()
    func win()
    func pause()
    func resumeLevel()
    func prepareProposal()
    func proposal()
    func showProposal()
}
class GameViewController: UIViewController, SceneToControllerDelegate {
    var scene: GameScene?
    var gameIsOn: Bool = false
    var isGameOnPause: Bool = false
    var currentAction: Int = 0
    let player = MPMusicPlayerController.applicationMusicPlayer
    var heartTimer: Timer?
    var heartHasToGoUp = true
    var heartYPlus: CGFloat = 0
    var heartXPlus: CGFloat = 0
    var heartInProgress: HeartDesign = .red
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var heartOutlet: UIButton!
    @IBOutlet weak var noOutlet: UIButton!
    @IBOutlet weak var yesOutlet: UIButton!
    @IBOutlet weak var character1Outlet: UIImageView!
    @IBOutlet weak var character2Outlet: UIImageView!
    @IBOutlet weak var playButtonOutlet: UIButton!
    @IBOutlet weak var menu: UIStackView!
    @IBOutlet weak var levelLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pointX: CGFloat = -heartOutlet.frame.width
        let pointY: CGFloat = UIScreen.main.bounds.width / 2
        heartOutlet.frame.origin = CGPoint(x: pointX, y: pointY)
        let comparisonWidth: Float =  UIScreen.main.bounds.width > UIScreen.main.bounds.height ? 667:375
        let comparisonHeight: Float =  UIScreen.main.bounds.width > UIScreen.main.bounds.height ? 375:667
        System.resize = Float(UIScreen.main.bounds.size.width) / comparisonWidth > Float(UIScreen.main.bounds.height) / comparisonHeight ? Float(UIScreen.main.bounds.height) / comparisonHeight:Float(UIScreen.main.bounds.size.width) / comparisonWidth
        playButtonOutlet.isHidden = true
        makeLabelPrepareForAppearance()
        titleLabel.text = "  notre histoire  "
        levelLabel.isHidden = true
        playMusic(Game.music)
        
        
        
 
    }
    
    
    
    
    @IBAction func heartTouch(_ sender: Any) {
        heartInProgress = heartInProgress.change()
        heartOutlet.setTitle(heartInProgress.getString(), for: .normal)
    }
    @objc private func moveHeart() {
        if heartYPlus == 20 {
            heartYPlus -= 1
            heartHasToGoUp = false
        } else if heartYPlus == -20 {
            heartYPlus += 1
            heartHasToGoUp = true
        } else if heartHasToGoUp {
            heartYPlus += 1
        } else {
            heartYPlus -= 1
        }
        heartXPlus += 1
        let translationY: CGFloat = heartHasToGoUp ? 1:-1
        let translation = CGAffineTransform(translationX: 1, y: translationY)
        UIView.animate(withDuration: 0.05, animations: {
            self.heartOutlet.transform = translation
        }, completion: { _ in
            let pointX = self.heartOutlet.frame.origin.x + 1
            let pointY = self.heartOutlet.frame.origin.y + translationY
            self.heartOutlet.frame.origin = CGPoint(x: pointX, y: pointY)
        })
        
        if heartXPlus >= UIScreen.main.bounds.width + 1 {
            //heartOutlet.transform = .identity
            let pointX: CGFloat = -heartOutlet.frame.width
            let pointY: CGFloat = UIScreen.main.bounds.height / 2
            heartOutlet.frame.origin = CGPoint(x: pointX, y: pointY)
            heartXPlus = 0
            heartYPlus = 0
            heartHasToGoUp = true
        }
    }
    
    
    @IBAction func noAction(_ sender: Any) {
        var newX = yesOutlet.frame.origin.x
        var newY = yesOutlet.frame.origin.y
        while newX >= yesOutlet.frame.minX && newX <= yesOutlet.frame.maxX && newY >= yesOutlet.frame.minY && newY <= yesOutlet.frame.maxY {
            let minXRange: CGFloat = UIScreen.main.bounds.width / 10
            let maxXRange: CGFloat = UIScreen.main.bounds.width - minXRange
            let minYRange: CGFloat = UIScreen.main.bounds.height / 10
            let maxYRange: CGFloat = UIScreen.main.bounds.height - minYRange
            newX = CGFloat.random(in: minXRange...maxXRange)
            newY = CGFloat.random(in: minYRange...maxYRange)
        }
        noOutlet.frame.origin = CGPoint(x: newX, y: newY)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        makeLabelAppear()
        heartTimer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(moveHeart), userInfo: nil, repeats: true)
        heartOutlet.isHidden = false
    }
    private func playMusic(_ music: MPMediaEntityPersistentID?) {
        if let musicID = music {
            let predicate = MPMediaPropertyPredicate(value: musicID, forProperty: "persistentID")
            let query = MPMediaQuery(filterPredicates: [predicate])
            guard let collection = query.collections else { return }
            if let playingMusic = player.nowPlayingItem {
                if playingMusic != collection[0].items[0] {
                    player.stop()
                    player.setQueue(with: collection[0])
                    player.repeatMode = .one
                    player.play()
                }
            } else {
                player.setQueue(with: collection[0])
                player.repeatMode = .one
                player.play()
            }
            
        }
    }
    private func pauseMusic() {
        if let _ = player.nowPlayingItem {
            player.pause()
        }
    }
    private func stopMusic() {
        if let _ = player.nowPlayingItem {
            player.stop()
        }
    }
    private func makeLabelAppear() {
        UIView.animate(withDuration: 1, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, animations: {
            self.titleLabel.transform = .identity
            self.levelLabel.transform = .identity
        }, completion: {_ in
            self.playButtonOutlet.isHidden = false
        })
    }
    
    private func makeLabelDisappear(_ handler: ((Bool) -> Void)?) {
        UIView.animate(withDuration: 1, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, animations: {
            let translation = CGAffineTransform(translationX: -UIScreen.main.bounds.width, y: 0)
            self.titleLabel.transform = translation
            self.levelLabel.transform = translation
        }, completion: handler)
    }
    
    private func makeLabelPrepareForAppearance() {
        titleLabel.isHidden = true
        levelLabel.isHidden = true
        titleLabel.transform = .identity
        levelLabel.transform = .identity
        let translation = CGAffineTransform(translationX: UIScreen.main.bounds.width, y: 0)
        titleLabel.transform = translation
        levelLabel.transform = translation
        titleLabel.isHidden = false
        levelLabel.isHidden = false
    }


    @IBAction func playButton(_ sender: Any) {
        
        if isGameOnPause {
            resumeLevel()
        } else {
            Game.canAskForLevel11 = heartInProgress == .green && Game.blockLevel11 == false
            if Game.levelInProgress == 10 {
                if Game.canPresentLevel11 {
                    beginningLevel()
                } else {
                    alertLevel11()
                }
            } else {
                if Game.canPresentLevel11 {
                    Game.beforeLevel11 = Game.levelInProgress
                    Game.levelInProgress = 10
                    beginningLevel()
                } else if Game.canAskForLevel11 == false {
                    beginningLevel()
                }
            }
        }
    }
    func resumeLevel() {
        UIView.animate(withDuration: 1, animations: {
            self.titleLabel.transform = .identity
            self.playButtonOutlet.transform = .identity
        }, completion: {_ in
            self.isGameOnPause = false
            let name = Notification.Name("endPause")
            let notification = Notification(name: name)
            NotificationCenter.default.post(notification)
        })
    }
    private func beginningLevel() {
        heartTimer?.invalidate()
        heartTimer = nil
        heartOutlet.isHidden = true
        makeLabelDisappear({_ in
            self.makeLabelPrepareForAppearance()
            self.levelLabel.text = "  niveau \(Game.levelInProgress + 1)  "
            self.titleLabel.text = "  \(Game.levels[Game.levelInProgress].title)  "
            if let view = self.view as! SKView? {
                print("ok")
                // Load the SKScene from 'GameScene.sks'
                if let scene = SKScene(fileNamed: "GameScene") as? GameScene {
                    print("ok")
                    self.scene = scene
                    self.scene?.controllerDelegate = self
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .resizeFill
                    
                    // Present the scene
                    view.presentScene(scene)
                }
                
                view.ignoresSiblingOrder = true
                
                view.showsFPS = true
                view.showsNodeCount = true
            }
            let translation = CGAffineTransform(translationX: -UIScreen.main.bounds.width, y: 0)
            self.playMusic(Game.levels[Game.levelInProgress].music)
            UIView.animate(withDuration: 1, animations: {
                self.menu.transform = translation
            }, completion: {_ in
                UIView.animate(withDuration: 1, delay: 3, animations: {
                    self.titleLabel.transform = .identity
                    self.levelLabel.transform = .identity
                }, completion: nil)
            })
        })
    }
    
    func lost() {
        levelDidEnd(levelText: "  ouch !  ", titleText: "  ce n'est pas grave, retente ta chance !  ", updateLevel: false)
    }
    
    func win() {
        levelDidEnd(levelText: "  félicitations !  ", titleText: "  tu as terminé le niveau \(Game.levelInProgress + 1) !  ", updateLevel: true)
    }
    func pause() {
        isGameOnPause = true
        titleLabel.text = "  --- PAUSE --- "
        playButtonOutlet.setTitle("REPRENDRE", for: .normal)
        let translation = CGAffineTransform(translationX: UIScreen.main.bounds.width, y: 0)
        UIView.animate(withDuration: 1, animations: {
            self.titleLabel.transform = translation
            self.playButtonOutlet.transform = translation
        })
    }
    func prepareProposal() {
        levelLabel.text = "  niveau 11  "
        titleLabel.text = "  la demande en mariage  "
        stopMusic()
        playMusic(Game.endMusic)
    }
    func showProposal() {
        UIView.animate(withDuration: 3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, animations: {
            let translation = CGAffineTransform(translationX: UIScreen.main.bounds.width, y: 0)
            self.levelLabel.transform = translation
            self.titleLabel.transform = translation
        }, completion: nil)
    }
    func proposal() {
        UIView.animate(withDuration: 1, animations: {
            self.titleLabel.transform = .identity
            self.levelLabel.transform = .identity
        }, completion: { _ in
            self.character2Outlet.image = UIImage(named: "character2_knee")
            self.levelLabel.text = ""
            self.titleLabel.text = "   veux-tu m'épouser ?   "
            UIView.animate(withDuration: 1, animations: {
                self.menu.transform = .identity
            }, completion: { _ in
                self.yesOutlet.isHidden = false
                self.noOutlet.isHidden = false
            })
        })
        
        
    }
    private func levelDidEnd(levelText: String, titleText: String, updateLevel: Bool) {
        if let view = self.view as! SKView? {
            playButtonOutlet.setTitle("CONTINUER", for: .normal)
            playButtonOutlet.isHidden = false
            titleLabel.text = titleText
            levelLabel.text = levelText
            UIView.animate(withDuration: 1, animations: {
                self.menu.transform = .identity
            }, completion: {_ in
                self.scene?.removeFromParent()
                view.presentScene(nil)
                if updateLevel {
                    if let level = Game.beforeLevel11 {
                        Game.levelInProgress = level
                        Game.beforeLevel11 = nil
                    } else {
                        Game.levelInProgress += 1
                    }
                    UserDefaults.standard.set(Game.levelInProgress, forKey: "levelInProgress")
                } else {
                    let level = Game.levels[Game.levelInProgress]
                    level.giftInProgress = 0
                    level.readenGifts = 0
                }
            })
        }
    }

    
    
    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    private func alertLevel11() {
        stopMusic()
        let alert = UIAlertController(title: "Fatal error", message: "The system can not access to Level11.swift.", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .destructive, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
}


