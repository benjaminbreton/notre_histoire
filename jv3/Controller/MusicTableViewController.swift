//
//  MusicTableViewController.swift
//  jv3
//
//  Created by Benjamin Breton on 28/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import UIKit
import MediaPlayer
class MusicTableViewController: UITableViewController, MPMediaPickerControllerDelegate {
    
    var choosenIndex: Int?
    var isGameReady: Bool {
        for level in Game.levels {
            guard let _ = level.music else { return false }
        }
        guard let _ = Game.music else { return false }
        guard let _ = Game.endMusic else { return false }
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.tableView.reloadData()
        if isGameReady {
            dismiss(animated: true, completion: nil)
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Game.levels.count + 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MusicCell", for: indexPath) as! MusicTableViewCell
        cell.setCell(indexPath.row)
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenIndex = indexPath.row
        let mediaPicker = MPMediaPickerController(mediaTypes: .music)
                mediaPicker.delegate = self
                mediaPicker.prompt = "Selectionne une musique"
                mediaPicker.allowsPickingMultipleItems = false
                mediaPicker.showsCloudItems = true
                present(mediaPicker, animated: true)
                // Do any additional setup after loading the view.
    }
    
    func mediaPicker(_ mediaPicker: MPMediaPickerController, didPickMediaItems mediaItemCollection: MPMediaItemCollection) {
        if let index = choosenIndex {
            if index == Game.levels.count {
                Game.music = mediaItemCollection.items[0].persistentID
                UserDefaults.standard.set(mediaItemCollection.items[0].persistentID, forKey: "musicGame")
            } else if index == Game.levels.count + 1 {
                Game.endMusic = mediaItemCollection.items[0].persistentID
                UserDefaults.standard.set(mediaItemCollection.items[0].persistentID, forKey: "musicEnd")
            } else {
                Game.levels[index].music = mediaItemCollection.items[0].persistentID
                UserDefaults.standard.set(mediaItemCollection.items[0].persistentID, forKey: "music\(index)")
            }
        }
        mediaPicker.dismiss(animated: true, completion: nil)
    }
    func mediaPickerDidCancel(_ mediaPicker: MPMediaPickerController) {
        mediaPicker.dismiss(animated: true, completion: nil)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
