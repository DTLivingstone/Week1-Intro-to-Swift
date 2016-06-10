//
//  ObjectStore.swift
//  ToDo
//
//  Created by David Livingstone on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

protocol ObjectStore: class {
    associatedtype Object: Identity
    var toDoList: [Object] { get set }
    
    func add(object: Object)
    func remove(object: Object)
    func objectAtIndex(index: Int) -> Object
    func count() -> Int
    func allObjects() -> [Object]
    func printDiagnostics()
}

extension ObjectStore {
    func add(object: Object) {
        return toDoList.append(object)
    }
    func remove(object: Object) {
        self.toDoList = toDoList.filter({ (toDo) -> Bool in
            return object.id != toDo.id
        })
    }
    func objectAtIndex(index: Int) -> Object {
        return self.toDoList[index]
    }
    func count() -> Int {
        return self.toDoList.count
    }
    func allObjects() -> [Object] {
        return self.toDoList
    }
    func printDiagnostics() {
        for task in Store.shared.allObjects() {
            print("id: \(task.id) description: \(task.description), dateCreated: \(task.dateCreated), status: \(task.status), priority: \(task.priority)")
        }
    }
    
//    Add save function to `ObjectStoreProtocol`. Provide default implementation for simply writing array of objects to the filesystem
    
    func save() {
        
    }
}