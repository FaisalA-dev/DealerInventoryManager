//
//  SignUpViewController.swift
//  DealerInventoryManager
//
//  Created by Faisal Anwari on 4/23/25.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmPasswordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func createAccountTapped(_ sender: UIButton) {
        let email = emailField.text ?? ""
        let password = passwordField.text ?? ""
        let confirm = confirmPasswordField.text ?? ""
        if password == confirm {
            print("Account created for \(email)")
            // Save to database or local store
        } else {
            print("Passwords don't match")
        }
    }
    
    @IBAction func backToSignInTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
