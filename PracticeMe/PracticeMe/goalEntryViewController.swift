//
//  goalEntryViewController.swift
//  PracticeMe
//
//  Created by Harrison Klein on 8/29/17.
//  Copyright © 2017 Harrison Klein. All rights reserved.
//

import Foundation
import UIKit

class goalEntryViewController: UIViewController {
    @IBOutlet weak var goalView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goalView.becomeFirstResponder()
    }
}

extension goalEntryViewController: UITextViewDelegate {
    func textViewDidEndEditing(_ textView: UITextView) {
        <#code#>
    }
}

createKeyboardToolbar() -> UIVIew {
    let 
}
