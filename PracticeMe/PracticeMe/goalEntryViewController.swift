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
    
    var saveText: (_ text: String) -> Void = { (text:String) in }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goalView.inputAccessoryView = createKeyboardToolbar()
        goalView.becomeFirstResponder()
    }
    
    func createKeyboardToolbar() -> UIView {
    let keyboardToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 44))
    
    let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonPressed))
    keyboardToolbar.setItems([flexSpace, doneButton], animated: false)
    
    return keyboardToolbar
    }
    
    func doneButtonPressed() {
        goalView.resignFirstResponder()
    }
}

extension goalEntryViewController: UITextViewDelegate {
    func textViewDidEndEditing(_ textView: UITextView) {
        saveText(goalView.text)
        dismiss(animated: true, completion: nil)
    }
}
