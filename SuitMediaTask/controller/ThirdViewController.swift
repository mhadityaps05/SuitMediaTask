//
//  SceneDelegate.swift
//  SuitMediaTask
//
//  Created by Muhammad Aditya on 03/12/24.
//

import UIKit

protocol ThirdViewControllerDelegate: AnyObject {
    func didSelectUser(_ user: User)
}

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var users: [User] = []
    weak var delegate: ThirdViewControllerDelegate? 

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        tableView.delegate = self
        tableView.dataSource = self

        tableView.register(UINib(nibName: "UserTableViewCell", bundle: nil), forCellReuseIdentifier: "UserCell")

        if users.isEmpty {
            fetchUserData()

        }
    }

    func fetchUserData() {
        guard let url = URL(string: "https://reqres.in/api/users?page=1&per_page=10") else { return }

        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.center = self.view.center
        activityIndicator.startAnimating()
        self.view.addSubview(activityIndicator)

        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            DispatchQueue.main.async {
                activityIndicator.stopAnimating()
                activityIndicator.removeFromSuperview()
            }

            guard let data = data, error == nil else { return }

            do {
                let userResponse = try JSONDecoder().decode(UserResponse.self, from: data)
                self?.users = userResponse.data
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                }
            } catch {
                print("Failed to decode user data: \(error)")
            }
        }.resume()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as? UserTableViewCell else {
            return UITableViewCell()
        }

        let user = users[indexPath.row]
        cell.configure(with: user)

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let user = users[indexPath.row]
        delegate?.didSelectUser(user)
        dismiss(animated: true, completion: nil)
    }
}
