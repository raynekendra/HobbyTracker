//
//  FriendTableViewCell.swift
//  HobbyTracker
//
//  Created by Kendra McVay on 2/5/20.
//  Copyright © 2020 Kendra McVay. All rights reserved.
//

import Foundation
class FriendTableViewCell: UITableViewCell {
    
    //MARK: -IBOutlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var hometownLabel:
    UILabel!
    @IBOutlet var hobbyCountLabel:
    UILabel!

    var friend: Friend? {
        didSet {
            self.updateViews()
        }
    }
    
    private func updateViews() {
        guard let friend = friend else { return }
        
        nameLabel.text = friend.name
        hometownLabel.text = friend.homeTown
        hobbyCountLabel.text = "\(friend.hobbies.count) hobbies."
    }
    
    
    
    
}
