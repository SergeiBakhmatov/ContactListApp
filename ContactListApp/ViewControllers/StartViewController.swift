//
//  StartViewController.swift
//  ContactListApp
//
//  Created by Sergei Bakhmatov on 19.04.2023.
//

import UIKit

final class StartViewController: UITabBarController {
    
    let persons = Person.getPersonList()
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let contactListVC = viewController as? ContactListViewController {
                contactListVC.person = persons
            } else if let personsListVC = viewController as? PersonsListViewController {
                personsListVC.persons = persons
            } else { return }
            
        }
    }
    
}



