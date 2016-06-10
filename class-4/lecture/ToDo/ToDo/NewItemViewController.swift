//
//  NewItemViewController.swift
//  ToDo
//
//  Created by Michael Babiy on 1/13/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import UIKit

class NewItemViewController: UIViewController
{
    @IBOutlet weak var todoTextField: UITextField!
    
    class func identifier() -> String
    {
        return "NewItemViewController"
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationItem.title = "New"
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveButtonSelected(sender: AnyObject)
    {
        guard let navigationController = self.navigationController else { fatalError("Where did Navigation Controller go? Error origin: \(#function)") }
        
//        In NewItemViewController find `saveButtonSelected:` function and create item using description variable. Add the item to the `Store`
        
        if let description = self.todoTextField.text {
            let item = ToDo(description: description, dateCreated: "", status: "", priority: 0)
            Store.shared.add(item)
        }
        
        navigationController.popViewControllerAnimated(true)
    }
    
}