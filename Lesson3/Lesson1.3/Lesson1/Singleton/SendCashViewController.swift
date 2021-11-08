//
//  ViewController.swift
//  Lesson1.3
//
//  Created by Владимир Рузавин on 10/18/21.
//

import UIKit

class SendCashViewController: UIViewController {
    
    @IBOutlet weak var nemeTextField: UILabel!
    
    @IBOutlet weak var cashTextField: UILabel!
    
    let account = Account.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func sendCashAction(_ sender: Any) {
        
        guard let cashString = cashTextField.text,
              let cash = Int(cashString),
              let name = nameTextField.text
        else {
            return
        }
        
        account.name = name
        account.cash = cash
    }
}
