// Declare Identity protocol with id function
// Declare a ToDo class that conforms to Identity protocol… Define your own model scheme (variable it contains, etc)
// Define ObjectStore protocol with these functions: add:, remove:, objectAtIndex:, count, allObjects.
// Extend ObjectStore protocol to provide basic implementation for functions

// Create Store singleton that will conform to ObjectStore protocol and implement requirements
// Demonstrate adding / removing of ToDo items.

import Foundation

protocol Identity {
    var id: String { get set }
}

protocol ObjectStore {
    associatedtype Object: Identity
    func add(object: Object)
    func remove(object: Object)
    func objectAtIndex(index: Int) -> Object
    func count() -> Int
    func allObjects() -> [Object]
}

extension ObjectStore {
    func add(object: Object) {
        //
    }
    func remove(object: Object) {
        //
    }
    func objectAtIndex(Index: Int) -> Object {
        //
    }
    func count() -> Int {
        //
    }
    func allObjects() -> [Object] {
        //
    }
}

class Store: ObjectStore {
    static let shared = Store()
    private init() {}
    
    typealias Object = ToDo
    
    private var toDoList = [Object]()
    
}

class ToDo: Identity {
    let description: String
    let dateCreated: NSDate
    let dueDate: NSDate
    let priority: Int
    var id: String
    
    init(description: String, dateCreated: NSDate, dueDate: NSDate, priority: Int, id: String) {
        self.description = description
        self.dateCreated = dateCreated
        self.dueDate = dueDate
        self.priority = priority
        self.id = NSUUID().UUIDString
    }
}
