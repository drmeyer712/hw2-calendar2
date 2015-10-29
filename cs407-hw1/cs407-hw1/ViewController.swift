//
//  ViewController.swift
//  cs407-hw1
//
//  Created by Westley Bonack on 9/30/15.
//  Copyright (c) 2015 Daniel Meyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController : ViewTwo = segue.destinationViewController as! ViewTwo
        
        DestViewController.LabelText = textField.text
    }


}

