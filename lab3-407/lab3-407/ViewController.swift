//
//  ViewController.swift
//  lab3-407
//
//  Created by Westley Bonack on 9/25/15.
//  Copyright (c) 2015 Daniel Meyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonHello(sender: AnyObject) {
        labelHello.text = "Hi, " + textField.text
    }
    
    
    
    @IBOutlet weak var labelHello: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

