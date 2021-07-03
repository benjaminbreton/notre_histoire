//
//  HomeViewController.swift
//  jv3
//
//  Created by Benjamin Breton on 28/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import UIKit
import MediaPlayer
class HomeViewController: UIViewController {
    
    var isGameOn: Bool = false
    var gameIsReady: Bool {
        for level in Game.levels {
            guard let _ = level.music else { return false }
        }
        guard let _ = Game.music else { return false }
        guard let _ = Game.endMusic else { return false }
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Game.levels.append(Level1())
        Game.levels.append(Level2())
        Game.levels.append(Level3())
        Game.levels.append(Level4())
        Game.levels.append(Level5())
        Game.levels.append(Level6())
        Game.levels.append(Level7())
        Game.levels.append(Level8())
        Game.levels.append(Level9())
        Game.levels.append(Level10())
        Game.levels.append(Level11())
        for index in 0...Game.levels.count - 1 {
            Game.levels[index].music = UserDefaults.standard.object(forKey: "music\(index)") as? MPMediaEntityPersistentID ?? nil
        }
        Game.music = UserDefaults.standard.object(forKey: "musicGame") as? MPMediaEntityPersistentID ?? nil
        Game.endMusic = UserDefaults.standard.object(forKey: "musicEnd") as? MPMediaEntityPersistentID ?? nil
        //UserDefaults.standard.set(4, forKey: "levelInProgress")
        Game.levelInProgress = UserDefaults.standard.integer(forKey: "levelInProgress")
        Game.playerDidSeeIntro = UserDefaults.standard.bool(forKey: "intro")
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if gameIsReady {
            isGameOn = true
            performSegue(withIdentifier: "HomeToGame", sender: self)
            
            
            
        } else {
            isGameOn = false
            performSegue(withIdentifier: "HomeToGame", sender: self)
            //performSegue(withIdentifier: "HomeToMusic", sender: self)
        }
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
