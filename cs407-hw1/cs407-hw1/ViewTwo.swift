//
//  ViewTwo.swift
//  cs407-hw1
//
//  Created by Westley Bonack on 9/30/15.
//  Copyright (c) 2015 Daniel Meyer. All rights reserved.
//

import Foundation
import UIKit

class ViewTwo: UIViewController {
    
    @IBOutlet weak var label1Text: UILabel!
    
    @IBOutlet weak var textField2: UITextField!
    
    var LabelText = String()
    
    override func viewDidLoad() {
        
        label1Text.text = LabelText
        // Do any additional setup after loading the view, typically from a nib.
}

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController : ThirdView = segue.destinationViewController as! ThirdView
        
        DestViewController.Label2Text = LabelText
        DestViewController.Label3Text = textField2.text
    }
    
}