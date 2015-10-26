//
//  Wednesday.swift
//  hw-calendar
//
//  Created by Westley Bonack on 10/21/15.
//  Copyright (c) 2015 Daniel Meyer. All rights reserved.
//

import Foundation
import UIKit

class Wednesday: UITableViewController {
    
    var names = [String]()
    
    var cellTitle = String()
    var cellDesc = String()
    var time = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = "Tuesday"
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
        return wedEvents.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("nameCell4", forIndexPath: indexPath)
        
        let currentName = wedNames[indexPath.row]
        
        let currName = "Event: " + wedEvents[indexPath.row].title + ",  Description: " + wedEvents[indexPath.row].description + ",  Time: " + wedEvents[indexPath.row].time
        
        cell.textLabel??.text = currName
        
        //   print("indexPath: \(indexPath)")
        
        return cell as! UITableViewCell
        
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            wedEvents.removeAtIndex(indexPath.row)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    
    
}