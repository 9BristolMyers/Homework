//
//  DetailViewController.swift
//  Lesson1.3
//
//  Created by Владимир Рузавин on 10/18/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var cashLabel: UILabel!
    
    let account = Account.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    nameLabel.text = account.name
    cashLabel.text = String(account.cash)
    }
}
