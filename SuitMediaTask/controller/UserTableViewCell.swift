//
//  UserTableViewCell.swift
//  SuitMediaTask
//
//  Created by Muhammad Aditya on 03/12/24.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Round the avatarImageView
        avatarImageView.layer.cornerRadius = avatarImageView.frame.size.width / 2
        avatarImageView.clipsToBounds = true
    }
    func configure(with user: User) {
        firstNameLabel.text = user.firstName
        lastNameLabel.text = user.lastName
        emailLabel.text = user.email

        if let url = URL(string: user.avatar) {
            DispatchQueue.global().async {
                if let data = try? Data(contentsOf: url) {
                    DispatchQueue.main.async {
                        self.avatarImageView.image = UIImage(data: data)
                    }
                }
            }
        }
    }
}

