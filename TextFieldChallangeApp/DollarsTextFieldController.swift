//
//  DollarsTextFieldController.swift
//  TextFieldChallangeApp
//
//  Created by Zach Eidenberger on 5/23/17.
//  Copyright © 2017 ZacharyG. All rights reserved.
//

import Foundation
import UIKit

class dollarsTextFieldController: NSObject, UITextFieldDelegate{
    
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let numberFromString = Int(textField.text!)
            let NSnumberFromString = NSNumber(value: numberFromString!)
            print(NSnumberFromString)
        
           let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            
            textField.text = "\(formatter.string(from: NSnumberFromString))"
        
            return true
    }
    

}
