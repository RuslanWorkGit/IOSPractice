import UIKit

//MARK: - POP

class BirdClass {
    var name: String = ""
    var  canFly: Bool = true
    var flySpeed: Double = 0
    func distance(seconds: Float) -> Float { return 0 }
}

class SwanWhiteClass: BirdClass {
    
}

class SwanBlackClass: BirdClass {
    
}

class PenguinClass: BirdClass {
    
}

//MARK: - POP

protocol Bird {
    var name: String { get }
    var canFly: Bool { get }
}

protocol FlyingBird {
    var flySpeed: Float { get }
}

extension Bird {
    var canFly: Bool {
        return false
    }
}

extension Bird where Self: FlyingBird {
    var canFly: Bool {
        return true
    }
}

extension FlyingBird {
    func distance(seconds: Float) -> Float {
        seconds * flySpeed
    }
}

struct PenguinStruct: Bird {
    var name: String
    
}

let myPenguin = PenguinStruct(name: "Penguin")
myPenguin.canFly

enum Swan: String, Bird, FlyingBird {
    case white
    case black
    
    var flySpeed: Float {
        switch self {
        case .white:
            return 100
        case .black:
            return 150
        }
    }
    
    var name: String {
        return self.rawValue
    }
}

var myFirstSwan = Swan.black
myFirstSwan.canFly
myFirstSwan.flySpeed
myFirstSwan.distance(seconds: 10)
