//
//  NamesTableViewController.swift
//  cs407-Lab7
//
//  Created by Westley Bonack on 10/23/15.
//  Copyright (c) 2015 Daniel Meyer. All rights reserved.
//

import UIKit

class NamesTableViewController: UITableViewController {

    var names = [Name]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var newName = Name(name: "newName", description: "Karate Master")
        names.append(newName)
        newName = Name(name: "newName2", description: "Jedi Padawan")
        names.append(newName)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("nameCell", forIndexPath: indexPath)
        let currentName = names[indexPath.row]
        cell.textLabel??.text = currentName.name
        
        
        return cell as! UITableViewCell 
        
    }
    
}
