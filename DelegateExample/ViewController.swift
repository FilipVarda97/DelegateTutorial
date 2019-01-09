//
//  ViewController.swift
//  DelegateExample
//
//  Created by Filip Varda on 08/01/2019.
//  Copyright © 2019 Filip Varda. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label:UILabel!
    var customView:CustomView = CustomView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView = (Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as? CustomView)!
    }
    
    @IBAction func presentCustomView(_ sender:UIButton) {
        customView.center = self.view.center
        customView.delegate = self
        self.view.addSubview(customView)
    }
}

extension ViewController: TextTransferDelegate {
    func transferText(text: String) {
        if text != "" {
            self.label.text = text
            self.customView.removeFromSuperview()
        }
    }
}
