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
    
    static func getPersonList() -> [Person] {
        
        let dataStore = DataStore()
        var persons: [Person] = []
        
        dataStore.names.shuffle()
        dataStore.surnames.shuffle()
        dataStore.phoneNumbers.shuffle()
        dataStore.emails.shuffle()
        
        for index in 0...dataStore.names.count {
            let person = Person(
                name: dataStore.names[index],
                surname: dataStore.surnames[index],
                phoneNumber: dataStore.phoneNumbers[index],
                email: dataStore.emails[index])
            
            persons.append(person)
        }
        return persons
    }
   
    
}
