//
//  PersonClass.swift
//  Homework_7
//
//  Created by user184797 on 12/23/20.
//

import Foundation

class PersonsClass{
    static var names: [String] = ["Alla", "Maxim", "Sergey", "Nikolay", "German"]
    static var seconNames: [String] = ["Pugacheva", "Galkin", "Zverev", "Baskov", "Gref"]
    static var phones: [String] = ["+7(929)652-23-23", "+7(960)512-65-45", "+7(812)123-54-65", "+7(861)546-14-65", "+7(781)456-54-65"]
    static var emails: [String] = ["index1@m.ru", "index2@m.ru", "index3@m.ru", "index4@m.ru", "index5@m.ru"]
    
    static func getLudey() -> [Persons] {
        var alls: [Persons] = []
        for i in 0..<names.count {
            let x = Persons(name: names[i], secondName: seconNames[i], phone: phones[i], email: emails[i])
            alls.append(x)
        }
        return alls
    }
}
