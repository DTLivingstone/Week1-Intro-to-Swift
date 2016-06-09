//
//  ToDo.swift
//  ToDo
//
//  Created by David Livingstone on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class ToDo: Identity {
    let description: String
    let dateCreated: String
    let status: String
    let priority: Int
    var id: String
    
    init(description: String, dateCreated: String, status: String, priority: Int) {
        self.description = description
        self.dateCreated = dateCreated
        self.status = status
        self.priority = priority
        self.id = NSUUID().UUIDString
    }
}