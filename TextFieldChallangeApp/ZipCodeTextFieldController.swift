//
//  SwitchTextFieldController.swift
//  TextFieldChallangeApp
//
//  Created by Zach Eidenberger on 5/23/17.
//  Copyright © 2017 ZacharyG. All rights reserved.
//

import Foundation
import UIKit


class ZipCodeTextFieldController: NSObject, UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.returnKeyType = UIReturnKeyType.next
        textField.isEnabled = true
        textField.clearsOnBeginEditing = true
        
        if (textField.text?.characters.count)! < 5 {
            return true
        }else {
            return false
        }
    }
  
    
}
        

    

    
    
    
    
    

