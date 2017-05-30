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
    let zipDelegate = ZipCodeTextFieldController()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.zipCodeTextField?.delegate = zipDelegate
        self.dollarsTextField?.delegate = dollarDelegate
        self.switchTextField?.delegate = self
        //let switchBool = switchTextSwitch?.isOn
        // Do any additional setup after loading the view, typically from a nib.
    }
  
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string:     String) -> Bool {
        return (switchTextSwitch?.isOn)!
        }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

