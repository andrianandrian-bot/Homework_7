//
//  Persons.swift
//  Homework_7
//
//  Created by user184797 on 12/22/20.
//

import Foundation


struct Persons {
    let name: String
    let secondName: String
    let phone: String
    let email: String
    var fullName: String { "\(name) \(secondName)" }
}

/*
extension Persons {
    static func getPersonInfo() -> [Persons] {
        return [
            Persons(name: "Alla", secondName: "Pugacheva", phone: "+78005553535", email: "samaya@samaya.xyz"),
            Persons(name: "Galkin", secondName: "Maksim", phone: "+78005553536", email: "luchshyi@muzh.xyz")
        ]
    }
}
*/
