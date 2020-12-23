//
//  DetailedViewController.swift
//  Homework_7
//
//  Created by user184797 on 12/22/20.
//

import UIKit

class DetailedViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var phone = ""
    var email = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneLabel.text = phone
        emailLabel.text = email
    }
}
