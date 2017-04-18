//
//  Ex00ViewController.swift
//  D00
//
//  Created by Liudmila Russu on 4/17/17.
//  Copyright © 2017 Liudmila Russu. All rights reserved.
//

import UIKit

class Ex00ViewController: UIViewController {

    @IBAction func printLog(_ sender: UIButton) {
        print("Hello Swift !");
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
