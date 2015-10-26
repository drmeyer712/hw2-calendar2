//
//  Tuesday.swift
//  hw-calendar
//
//  Created by Westley Bonack on 10/21/15.
//  Copyright (c) 2015 Daniel Meyer. All rights reserved.
//

import Foundation
import UIKit

class Tuesday: UITableViewController {
    
    var names = [String]()
    
    var cellTitle = String()
    var cellDesc = String()
    var time = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = "Wednesday"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        /* if cellTitle != ""{
        return index
        }*/
        return tuesEvents.count;
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("nameCell3", forIndexPath: indexPath)
        
        let currentName = tuesNames[indexPath.row]
        
        let currName = "Event: " + tuesEvents[indexPath.row].title + ",  Description: " + tuesEvents[indexPath.row].description + ",  Time: " + tuesEvents[indexPath.row].time
        
        cell.textLabel??.text = currName
        
        //   print("indexPath: \(indexPath)")
        
        return cell as! UITableViewCell
    
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            tuesEvents.removeAtIndex(indexPath.row)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    
    
}