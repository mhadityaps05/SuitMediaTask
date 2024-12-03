//
//  SceneDelegate.swift
//  SuitMediaTask
//
//  Created by Muhammad Aditya on 03/12/24.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var palindromeTxt: UITextField!
    
    var users: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func checkButtonTapped(_ sender: UIButton) {
        let name = nameTxt.text ?? ""
        let sentence = palindromeTxt.text ?? ""

        if name.isEmpty || sentence.isEmpty {
            let alert = UIAlertController(title: "Error", message: "Please fill both fields.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            return
        }

        if isPalindrome(sentence) {
            let alert = UIAlertController(title: "Result", message: "\(name), the sentence is a palindrome", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Result", message: "\(name), the sentence is not a palindrome", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }

    func isPalindrome(_ sentence: String) -> Bool {
        let cleanedSentence = sentence.lowercased().replacingOccurrences(of: " ", with: "")
        return cleanedSentence == String(cleanedSentence.reversed())
    }

    @IBAction func nextButtonTapped(_ sender: UIButton) {
        // Fetch data from the API
        fetchUserData { users in
            self.users = users
            self.performSegue(withIdentifier: "SecondScreen", sender: nil)
        }
    }

    func fetchUserData(completion: @escaping ([User]) -> Void) {
        guard let url = URL(string: "https://reqres.in/api/users?page=1&per_page=10") else {
            completion([])
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion([])
                return
            }

            do {
                let userResponse = try JSONDecoder().decode(UserResponse.self, from: data)
                completion(userResponse.data)
            } catch {
                completion([])
            }
        }
        task.resume()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SecondScreen", let secondVC = segue.destination as? SecondViewController {
            secondVC.users = self.users
            secondVC.userName = nameTxt.text
        }
    }
}
