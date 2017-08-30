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
        let alert = UIAlertController(title: "Select A Type", message: nil, preferredStyle: .actionSheet)
        let goalAction = UIAlertAction(title: "Goal", style: .default) {
            (alert: UIAlertAction!) -> Void in
            self.data.append(Cal_Goal_Data(cal_Goal_Type: .goal))
        }
        let auditionAction = UIAlertAction(title: "Audition", style: .default) {
            (alert: UIAlertAction!) -> Void in
            self.data.append(Cal_Goal_Data(cal_Goal_Type: .audition))
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(goalAction)
        alert.addAction(auditionAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }


}

