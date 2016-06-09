//
//  NewViewController.swift
//  Roster
//
//  Created by Michael Babiy on 6/7/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import UIKit

class NewViewController: UIViewController
{
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationItem.title = "New"
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveButtonSelected(sender: UIButton)
    {
        guard let navigationController = self.navigationController else { fatalError("Where did Navigation Controller go? Error origin: \(#function)") }
        
        if let firstName = self.firstName.text, lastName = self.lastName.text {
            let student = Student(firstName: firstName, lastName: lastName)
            Store.shared.add(student)
        }
        
        navigationController.popViewControllerAnimated(true)
    }
    
}
