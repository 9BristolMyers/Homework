//
//  FriendsViewControllerTableViewController.swift
//  Lesson1.3
//
//  Created by Владимир Рузавин on 10/23/21.
//

import UIKit

class FriendsViewController: UITableViewController {
    
    let friendsService = FriendsAPI()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        friendsService.getFriends { friends in
            
            print("Получили друзей в контроллере")
        }
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }
}
