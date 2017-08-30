//
//  ViewController.swift
//  PracticeMe
//
//  Created by Harrison Klein on 8/29/17.
//  Copyright © 2017 Harrison Klein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data: [Cal_Goal_Data] = [Cal_Goal_Data]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func createNewGoal(_ sender: Any) {
        
        let newGoal = Cal_Goal_Data()
        data.append(newGoal)
    }


}

