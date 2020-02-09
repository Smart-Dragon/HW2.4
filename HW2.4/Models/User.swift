//
//  User.swift
//  HW2.4
//
//  Created by Алексей Маслобоев on 09.02.2020.
//  Copyright © 2020 Алексей Маслобоев. All rights reserved.
//


struct User {
    var name: String
    var password: String
}

extension User {
    static func getUser() -> User {
        return User(name: "root", password: "mega-root")
    }
}
