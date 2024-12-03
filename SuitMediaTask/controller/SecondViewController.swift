//
//  SceneDelegate.swift
//  SuitMediaTask
//
//  Created by Muhammad Aditya on 03/12/24.
//

import UIKit

class SecondViewController: UIViewController {

    var userName: String?
    var selectedUser: User? 
    var users: [User] = []


    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var selectedUserLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Welcome"

        if let userName = userName {
            nameLabel.text = userName
        } else {
            nameLabel.text = "No name provided"
        }

        selectedUserLabel.isHidden = false
    }

    @IBAction func chooseUserButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ThirdScreen", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ThirdScreen", let thirdVC = segue.destination as? ThirdViewController {
            thirdVC.delegate = self
        }
    }
}

extension SecondViewController: ThirdViewControllerDelegate {
    func didSelectUser(_ user: User) {
        selectedUserLabel.text = "\(user.firstName) \(user.lastName)"
        selectedUserLabel.isHidden = false
    }
}
