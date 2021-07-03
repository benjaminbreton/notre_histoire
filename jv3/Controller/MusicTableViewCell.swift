//
//  MusicTableViewCell.swift
//  jv3
//
//  Created by Benjamin Breton on 28/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import UIKit
import MediaPlayer
class MusicTableViewCell: UITableViewCell {

    @IBOutlet weak var levelTitle: UILabel!
    @IBOutlet weak var musicTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(_ index: Int) {
        let music: MPMediaEntityPersistentID?
        if index == Game.levels.count {
            levelTitle.text = "Musique du menu"
            music = Game.music
        } else if index == Game.levels.count + 1 {
            levelTitle.text = "Musique de fin"
            music = Game.endMusic
        } else {
            levelTitle.text = "Niveau \(index + 1)"
            let level = Game.levels[index]
            music = level.music
        }

        if let musicID = music {
            let predicate = MPMediaPropertyPredicate(value: musicID, forProperty: "persistentID")
            let query = MPMediaQuery(filterPredicates: [predicate])
            guard let collection = query.collections else { return }
            let music = collection[0].items[0]
            backgroundColor = #colorLiteral(red: 0.6325608527, green: 0.9714196623, blue: 0.5462919063, alpha: 1)
            if let title = music.title {
                if let artist = music.artist {
                    musicTitle.text = "\(artist) - \(title)"
                } else {
                    musicTitle.text = "\(title)"
                }
            } else {
                musicTitle.text = "sans titre"
            }
        } else {
            backgroundColor = #colorLiteral(red: 0.9714196623, green: 0.6408879472, blue: 0.5590537453, alpha: 1)
            musicTitle.text = "aucune musique n'a été choisie"
        }
    }

}
