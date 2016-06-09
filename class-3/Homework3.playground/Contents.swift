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

protocol ObjectStore: class {
    associatedtype Object: Identity
    var toDoList: [Object] { get set }
    
    func add(object: Object)
    func remove(object: Object)
    func objectAtIndex(index: Int) -> Object
    func count() -> Int
    func allObjects() -> [Object]
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
}

class Store: ObjectStore {
    static let shared = Store()
    private init() {}
    
    typealias Object = ToDo
    
    var toDoList = [Object]()
}

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

let taskA = ToDo(description: "Wash dishes", dateCreated: "6/8/16", status: "In progress", priority: 2)
let taskB = ToDo(description: "Finish taxes", dateCreated: "3/4/15", status: "Complete", priority: 1)


Store.shared.add(taskA)
Store.shared.add(taskB)

let x = Store.shared.allObjects()