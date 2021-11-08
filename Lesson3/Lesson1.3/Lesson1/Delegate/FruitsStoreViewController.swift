//
//  FruitsStoreViewController.swift
//  Lesson1.3
//
//  Created by Владимир Рузавин on 10/18/21.
//

import UIKit

class FruitsStoreViewController: UIViewController, ChooseFruitViewControllerDelegate {

    @IBOutlet weak var alphabetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    @IBAction func chooseAlphabetAction(_ sender: Any) {
        
        let ChooseFruitContoller = ChooseFruitViewController()
        ChooseFruitContoller.delegate = self
        
        
        navigationController?.pushViewController(animated: true)
    }
    
    func alphabetChosen(alphabetAction(_ String) {
        self.alphabetLabel.text = alphabet
    }
}
