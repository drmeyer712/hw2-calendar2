//
//  addEventWed.swift
//  hw-calendar
//
//  Created by Westley Bonack on 10/26/15.
//  Copyright (c) 2015 Daniel Meyer. All rights reserved.
//

import Foundation
import UIKit

var wedNames = [String]()

var wedEvents = [event]()

class addEventWed: UIViewController {
    
    @IBOutlet weak var eventTitle: UITextField!
    
    @IBOutlet weak var eventDescription: UITextField!
    
    
    @IBOutlet weak var eventTime: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = "Create Event"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController : Wednesday = segue.destinationViewController as! Wednesday
        wedNames.append(eventTitle.text)
        DestViewController.cellTitle = eventTitle.text
        DestViewController.cellDesc = eventDescription.text
        DestViewController.time = eventTime.text
        
        var newEvent = event()
        newEvent.title = eventTitle.text
        newEvent.description = eventDescription.text
        newEvent.time = eventTime.text
        wedEvents.append(newEvent)
        
        
    }
    
}