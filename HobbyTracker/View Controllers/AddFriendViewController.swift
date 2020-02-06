//
//  AddFriendViewController.swift
//  HobbyTracker
//
//  Created by Kendra McVay on 2/5/20.
//  Copyright © 2020 Kendra McVay. All rights reserved.
//

import UIKit
// responsible for creating a friend object

protocol AddFriendDelegate  {
    func friendWasCreated(_ friend: Friend)
}
//Delegator
/* 1: Create a protocol with the deleaget name
   2: Create a delegate property of type [whatever your delegate name is]
   3: When needed, call the delegate methodon the delegator.
 */
class AddFriendViewController: UIViewController {

    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Hometown: UITextField!
    @IBOutlet weak var Hobby1: UITextField!
    @IBOutlet weak var Hobby2: UITextField!
    @IBOutlet weak var Hobby3: UITextField!
    //MARK: - IBOutlets
    // Mark private properties
    var delegate: AddFriendDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()



    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text,
            let homeTown = homeTownTextField.text,
            !name.isEmpty,
            !homeTown.isEmpty else { return }
        
        var friend = Friend(name: name, hometown: homeTown, hobbies:[])
        if let hobby1 = Hobby1TextField.text,
            !hobby1.isempty {
            friend.hobbies.append(hobby1)
        }
        if let hobby2 = Hobby2TextField.text,
            !hobby2.isempty {
            friend.hobbies.append(hobby2)
        }

        if let hobby3 = Hobby1TextField.text,
            !hobby3.isempty {
            friend.hobbies.append(hobby3)
        }
        delegate?.friendWasCreated(friend)
        }
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
