//
//  Store.swift
//  Roster
//
//  Created by David Livingstone on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class Store: ObjectStoreProtocol {
    static let shared = Store()
    private init() {}
    
    typealias Object = Student
    
    private var students = [Object]()
    
    func add(object: Object) {
        self.students.append(object)
    }
    func remove(object: Object) {
        self.students = self.students.filter({ (student) -> Bool in
            return object.id != student.id
        })
    }
    func removeAllObjects() {
        self.students.removeAll()
    }
    func count() -> Int {
        return self.students.count
    }
    func allStudents() -> [Object] {
        return self.students
    }
}