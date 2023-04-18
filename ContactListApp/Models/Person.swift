//
//  Person.swift
//  ContactListApp
//
//  Created by Sergei Bakhmatov on 18.04.2023.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
