//
//  Protocols.swift
//  live-3
//
//  Created by Ruslan Liulka on 04.10.2023.
//

import Foundation

protocol Flyable {
    
    var name: String {get set}
    func fly()
}

class Eagle: Flyable {
    var name: String = "Eagle"
    
    func fly() {
        print("Eagle is fling")
    }
}

struct AirPlane: Flyable {
    var name: String = "Airplane"
    
    func fly() {
        print("Airplane is fling")
    }
}
