//
//  SignInViewController.swift
//  DealerInventoryManager
//
//  Created by Faisal Anwari on 4/23/25.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signInTapped(_ sender: UIButton) {
        let email = emailField.text ?? ""
        let password = passwordField.text ?? ""
        print("Sign In with \(email), \(password)")
        // Validate and sign in logic here
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let homeVC = storyboard.instantiateViewController(withIdentifier: "HomeVC")
        homeVC.modalPresentationStyle = .fullScreen
        present(homeVC, animated: true)

    }
    
    @IBAction func goToSignUpTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let signUpVC = storyboard.instantiateViewController(withIdentifier: "SignUpVC")
        signUpVC.modalPresentationStyle = .fullScreen
        present(signUpVC, animated: true)
    }
}
