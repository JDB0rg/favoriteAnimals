//
//  AnimalsTableViewController.swift
//  Favorite Animals
//
//  Created by Madison Waters on 8/28/18.
//  Copyright © 2018 Jonah Bergevin. All rights reserved.
//

import UIKit

class AnimalsTableViewController: UITableViewController {
    
    let animals = [
        "Liger",
        "Norwegian Forest Cat",
        "Surf Kitty",
        "Ski Bunny",
        "Megaladon",
        "Trogdor",
        "Orangutan",
        "Otter Babies",
        "Dik Dik",
        ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalsCell", for: indexPath)

        // Configure the cell...
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "animalsCell")
        cell.textLabel?.text = animals[indexPath.row]

        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
