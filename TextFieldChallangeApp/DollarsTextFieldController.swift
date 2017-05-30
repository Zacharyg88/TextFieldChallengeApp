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
//        textField.text = "$0.00"
//        var textArray = [0,0,0]
//        let numberFromString = Int(textField.text!)
//            let NSnumberFromString = NSNumber(value: numberFromString!)
//            print(NSnumberFromString)
//        
//           let formatter = NumberFormatter()
//            formatter.numberStyle = .currency
//            
//            textField.text = "\(formatter.string(from: NSnumberFromString))"
//        
//            return true
       // var newText = ""
        var digit = Int()
        var digitText = ""
        
        //let newText = (textField.text! as String).replacingCharacters(in: range, with: string)
        
        
        
        return false
    }
    

}
