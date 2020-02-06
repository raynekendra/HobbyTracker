//
//  ViewController.swift
//  HobbyTracker
//
//  Created by Kendra McVay on 1/30/20.
//  Copyright © 2020 Kendra McVay. All rights reserved.
//

import UIKit

class FriendsTableViewController: UIViewController {
    
    //MARK: IBOutlet
    @IBOutlet var tableView: UITabelView!
    
//mark: Properties
    var friends: [Friend] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
}

extension FriendsTableViewCotnroller: UITabelViewDataSource {
    func tableView(_ tableView: UITabelView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendTableViewCell else { return UITableViewCell() }
        
        let friend = friends[indexPath.row]
        
        cell.friend = friend
        return cell
    }
}

extension FriendsTableViewController: AddFriendProtocol {
    
}
