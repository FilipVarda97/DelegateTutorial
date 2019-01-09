//
//  CustomView.swift
//  DelegateExample
//
//  Created by Filip Varda on 08/01/2019.
//  Copyright © 2019 Filip Varda. All rights reserved.
//

import Foundation
import UIKit

protocol TextTransferDelegate: class {
    func transferText(text:String)
}

class CustomView: UIView {
    
    @IBOutlet weak var textField:UITextField!
    @IBOutlet weak var button:UIButton!
    
    weak var delegate:TextTransferDelegate? = nil
    
    @IBAction func changeTextPressed(_ sender:UIButton) {
        guard let delegate = delegate else { return }
        delegate.transferText(text: textField.text!)
    }
}
