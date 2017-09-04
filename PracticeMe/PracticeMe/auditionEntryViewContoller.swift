//
//  auditionEntryViewContoller.swift
//  PracticeMe
//
//  Created by Harrison Klein on 9/3/17.
//  Copyright © 2017 Harrison Klein. All rights reserved.
//

import Foundation
import UIKit

class auditionEntryViewContoller: UIViewController {
    @IBOutlet weak var helloWorld: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloWorld.becomeFirstResponder()
    }
    
    

}
