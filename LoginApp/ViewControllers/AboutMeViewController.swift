//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Andrew Bondarenko on 20.01.2022.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var aboutMeLabel: UILabel!
    
    var myAge = 1
    var myMetier = ""
    var myHobby = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutMeLabel.text = "Привет, меня зовут \(UserData.user.person.fullName). Мне \(myAge) года и я \(myMetier). Из моих увлечений можно отнести: \(myHobby). Я очень рад, что стал частью проекта SwiftBook!! 🙂"
    }
}
