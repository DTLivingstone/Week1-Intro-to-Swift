//
//  Store.swift
//  ToDo
//
//  Created by David Livingstone on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation


class Store: ObjectStore {
    static let shared = Store()
    private init() {}
    
    typealias Object = ToDo
    
    var toDoList = [Object]()
}

let taskA = ToDo(description: "Wash dishes", dateCreated: "6/8/16", status: "In progress", priority: 2)
let taskB = ToDo(description: "Finish taxes", dateCreated: "3/4/15", status: "Complete", priority: 1)
let taskC = ToDo(description: "Mow lawn", dateCreated: "4/4/16", status: "Canceled", priority: 8)