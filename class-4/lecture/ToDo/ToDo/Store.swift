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