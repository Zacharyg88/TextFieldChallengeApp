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
    
    private lazy var textFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }()
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        func centsFromString(string:String)-> Double {
            let numbers = "1234567890"
            var centsString = String()
            
            for i in string.characters {
                if numbers.contains(String(i)) {
                    centsString.append(i)
                }
            }
            return Double(centsString)!/100.0
        }
    
        let oldText = textField.text! as NSString
        
        let newText = oldText.replacingCharacters(in: range, with: string)
        
        let cents = centsFromString(string: newText)
        
        textField.text = textFormatter.string(from: cents as NSNumber)
        
        return false
    }
    

}
