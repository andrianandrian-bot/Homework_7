//
//  SecondTableViewController.swift
//  Homework_7
//
//  Created by user184797 on 12/22/20.
//

import UIKit

class SecondTableViewController: UITableViewController {

    var names = PersonsClass.getLudey()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return names.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return names[section].fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let phone = names[indexPath.row]
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
            cell.textLabel?.text = phone.phone
            //cell.imageView?.image = UIImage(systemName: "love")
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier1", for: indexPath)
            cell.textLabel?.text = phone.email
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
