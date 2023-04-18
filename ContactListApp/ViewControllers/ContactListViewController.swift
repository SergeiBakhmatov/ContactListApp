//
//  ContactListViewController.swift
//  ContactListApp
//
//  Created by Sergei Bakhmatov on 18.04.2023.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    let persons = Person.getPersonList()

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
}
// MARK: - UITableViewDataSource

extension ContactListViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }

}
