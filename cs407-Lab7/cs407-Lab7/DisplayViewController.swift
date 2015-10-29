//
//  DisplayViewController.swift
//  cs407-Lab7
//
//  Created by Westley Bonack on 10/23/15.
//  Copyright (c) 2015 Daniel Meyer. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
    
    var currentName: Name?
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        descriptionLabel.text = currentName?.description
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
