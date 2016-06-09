//
//  ObjectStoreProtocol.swift
//  Roster
//
//  Created by David Livingstone on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

protocol ObjectStoreProtocol {
    associatedtype Object: Identity
    func add(object: Object)
    func remove(object: Object)
    func removeAllObjects()
    func count() -> Int
    func allStudents() -> [Object]
}