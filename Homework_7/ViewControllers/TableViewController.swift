//
//  TableViewController.swift
//  Homework_7
//
//  Created by user184797 on 12/22/20.
//

import UIKit

class TableViewController: UITableViewController {

    var names = PersonsClass.getLudey()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! DetailedViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        dvc.phone = names[indexPath.row].phone
        dvc.email = names[indexPath.row].email

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellToDetailScreen", for: indexPath)
        let fullName = names[indexPath.row]
        cell.textLabel?.text = fullName.fullName
        return cell
    }
}
