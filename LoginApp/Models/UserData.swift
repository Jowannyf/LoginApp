//
//  UserData.swift
//  LoginApp
//
//  Created by Andrew Bondarenko on 18.01.2022.
//

struct UserData {
    let user: String
    let password: String
    let person: AboutUser
    
    static let user = UserData(user: "User",
                               password: "password",
                               person: AboutUser(fullName: "Ivan Zhukov",
                                                age: 22,
                                                hobby: "оригами, хоровое пение, вкусно покушать 😋",
                                                metier: "студент"))
                               
}

struct AboutUser {
    let fullName: String
    let age: Int
    let hobby: String
    let metier: String
}

