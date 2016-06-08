// Declare Identity protocol with id function
// Declare a ToDo class that conforms to Identity protocol… Define your own model scheme (variable it contains, etc)
// Define ObjectStore protocol with these functions: add:, remove:, objectAtIndex:, count, allObjects.
// Extend ObjectStore protocol to provide basic implementation for functions
// Create Store singleton that will conform to ObjectStore protocol and implement requirements
// Demonstrate adding / removing of ToDo items.

import Foundation

protocol Identity {
    func id() -> String
}

protocol ObjectStore {
    associatedtype Object: Identity
    func add(object: Object)
    func remove(object: Object)
    func objectAtIndex() -> Object
    func count() -> Int
    func allObjects() -> [Object]
}

class ToDo: Identity {
    let description: String
    let dateCreated: NSDate
    let dueDate: NSDate
    let priority: Int
    func id() -> String {
        return NSUUID().UUIDString
    }
    
    init(description: String, dateCreated: NSDate, dueDate: NSDate, priority: Int) {
        self.description = description
        self.dateCreated = dateCreated
        self.dueDate = dueDate
        self.priority = priority
    }
}
