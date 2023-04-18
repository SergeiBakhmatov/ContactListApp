//
//  ContactDetailsViewController.swift
//  ContactListApp
//
//  Created by Sergei Bakhmatov on 18.04.2023.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        super.title = person.fullName
        
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"

    }
}
