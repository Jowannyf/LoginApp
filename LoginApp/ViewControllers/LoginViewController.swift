//
//  ViewController.swift
//  LoginApp
//
//  Created by Andrew Bondarenko on 13.01.2022.
//

import UIKit

class  LoginViewController: UIViewController{
    
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userText = UserData.user.person.fullName
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
                aboutUserVC.myAge = UserData.user.person.age
                aboutUserVC.myMetier = UserData.user.person.metier
                aboutUserVC.myHobby = UserData.user.person.hobby
            }
        }
    }
    
    @IBAction func showNameButton(_ sender: Any) {
        showAlert(title: "OOOps", message: "Your name is \(UserData.user.user)")
    }
    
    @IBAction func showPasswordButton(_ sender: Any) {
        showAlert(title: "OOOps", message: "Your password is \(UserData.user.password)")
    }
    
    
    @IBAction func loginButton() {
        if userTextField.text != UserData.user.user || passwordTextField.text != UserData.user.password {
            showAlert(title: "Wrong user name or password",
                      message: "Please, enter correct user name and password",
                      textField: passwordTextField)
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTextField.text = ""
        passwordTextField.text = ""
    }
}

extension LoginViewController {
    private func showAlert(title: String,
                           message: String,
                           textField: UITextField? = nil) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok",
                                     style: .default) {_ in textField?.text = ""}
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            loginButton()
            performSegue(withIdentifier: "welcomeVC", sender: nil)
        }
        return true
    }
}
