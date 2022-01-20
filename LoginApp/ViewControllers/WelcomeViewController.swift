//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Andrew Bondarenko on 13.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userText)!"
    }
}
