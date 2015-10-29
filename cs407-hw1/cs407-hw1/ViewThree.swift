//
//  ViewThree.swift
//  cs407-hw1
//
//  Created by Westley Bonack on 9/30/15.
//  Copyright (c) 2015 Daniel Meyer. All rights reserved.
//

import Foundation

import UIKit

class ThirdView: UIViewController {
    
    @IBOutlet weak var label2: UILabel!
    
    var Label2Text = String()
    var Label3Text = String()
   
    override func viewDidLoad() {
    
      label2.text = Label2Text
        // Do any additional setup after loading the view, typically from a nib.
    }
  
}