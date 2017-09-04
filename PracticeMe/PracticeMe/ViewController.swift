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
            self.creatNewGoalText()       }
        let auditionAction = UIAlertAction(title: "Audition", style: .default) {
            (alert: UIAlertAction!) -> Void in
            self.createNewAuditionText()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(goalAction)
        alert.addAction(auditionAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
    
    func creatNewGoalText() {
        guard let goalEntryVC = storyboard?.instantiateViewController(withIdentifier: "goalEntry") as? goalEntryViewController else {
            print("goal entry view controller could not be instantiated from storyboard")
            return
        }
        goalEntryVC.modalTransitionStyle = .coverVertical
        goalEntryVC.saveText = { (text: String) in
            let newGoalText = GoalData(goal: text)
            self.data.append(newGoalText)
        }
        present(goalEntryVC, animated: true, completion: nil)
    }
    
    func createNewAuditionText() {
        guard let auditionEntryVC = storyboard?.instantiateInitialViewController() as? auditionEntryViewContoller else {
            print("audition entry view controller could not be instantiated from storyboard")
            return
        }
        auditionEntryVC.modalTransitionStyle = .coverVertical
        present(auditionEntryVC, animated: true, completion: nil)
    }
}
/*
extension ViewController: UITableViewDataSource {

}*/

