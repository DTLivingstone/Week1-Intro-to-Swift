import Foundation

// Declare Identity protocol with id function

protocol Identity {
    var id: String { get set }
}

// Declare a ToDo class that conforms to Identity protocol… Define your own model scheme (variable it contains, etc)

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

// Define ObjectStore protocol with these functions: add:, remove:, objectAtIndex:, count, allObjects.

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

// Extend ObjectStore protocol to provide basic implementation for functions

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
}

// Create Store singleton that will conform to ObjectStore protocol and implement requirements

class Store: ObjectStore {
    static let shared = Store()
    private init() {}
    
    typealias Object = ToDo
    
    var toDoList = [Object]()
}

let taskA = ToDo(description: "Wash dishes", dateCreated: "6/8/16", status: "In progress", priority: 2)
let taskB = ToDo(description: "Finish taxes", dateCreated: "3/4/15", status: "Complete", priority: 1)
let taskC = ToDo(description: "Mow lawn", dateCreated: "4/4/16", status: "Canceled", priority: 8)

// Demonstrate adding / removing of ToDo items
// add

Store.shared.add(taskA)
Store.shared.add(taskB)
Store.shared.add(taskC)
Store.shared.printDiagnostics()

// remove

Store.shared.remove(taskC)
Store.shared.printDiagnostics()

// objectAtIndex

Store.shared.objectAtIndex(1).description

// count

Store.shared.count()

// allObjects

Store.shared.allObjects()