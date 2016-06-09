//
//  Student.swift
//  Roster
//
//  Created by David Livingstone on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class Student: Identity {
    let firstName: String
    let lastName: String
    var id: String
    
    init(firstName: String, lastName: String)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.id = NSUUID().UUIDString
    }
    
    func description() -> String {
        return "\(self.firstName) \(self.lastName): \(self.id)"
    }
}