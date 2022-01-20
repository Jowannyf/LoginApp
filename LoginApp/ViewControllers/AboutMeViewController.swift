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
        aboutMeLabel.text = "Привет!! Меня зовут \(UserData.user.person.fullName). Мне \(myAge) года и я \(myMetier). Из моих увлечений можно отнести: \(myHobby). Я очень рад, что стал частью проекта SwiftBook!! 🙂"
    }
    
    @IBAction func openURL() {
        UIApplication.shared.open(URL(string:"https://vk.com/unosolospirito?z=video-149684878_456239050%2F3f5ffcbd267e9f55a1%2Fpl_wall_-149684878")! as URL, options: [:], completionHandler: nil)
    }
}
