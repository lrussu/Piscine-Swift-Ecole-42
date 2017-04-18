//
//  ViewController.swift
//  D00
//
//  Created by Liudmila Russu on 4/17/17.
//  Copyright © 2017 Liudmila Russu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lableDisplay: UILabel!
    
    @IBAction func buttonClick(_ sender: UIButton) {
        lableDisplay.text = "Hello Swift!";
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

