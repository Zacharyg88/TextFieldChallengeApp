//
//  ViewController.swift
//  TextFieldChallangeApp
//
//  Created by Zach Eidenberger on 5/23/17.
//  Copyright © 2017 ZacharyG. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var zipCodeTextField: UITextField?
    @IBOutlet weak var dollarsTextField: UITextField?
    @IBOutlet weak var switchTextField: UITextField?
    @IBOutlet weak var switchTextSwitch: UISwitch?

    let dollarDelegate = dollarsTextFieldController()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.zipCodeTextField?.delegate = self
        self.dollarsTextField?.delegate = dollarDelegate
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (textField.text?.characters.count)! > 4 {
            textField.isEnabled = false
        }
        textField.returnKeyType = UIReturnKeyType.next
        textField.isEnabled = true
        textField.clearsOnBeginEditing = true
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

