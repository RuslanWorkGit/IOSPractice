import UIKit

class Animal {
    var name: String = ""
    var age: Int = 0
    
    init() {
        print("Animal - init")
    }
    
    func move() {
        print("I can move")
    }
    
    deinit {
        print("Animal - deinit")
    }
}

func doSomthing() {
    let animal1 = Animal()
    animal1.move()
}

doSomthing()

//inharitance

final class Fish: Animal {
    override func move() {
//        super.move()
        print("I can swim")
    }
}

let fish1 = Fish()
fish1.move()

//перевизначення

class Bird: Animal {
    
    override func move() {
        super.move()
        print("I can fly")
    }
}

let bird1 = Bird()
bird1.move()

//Struct

struct House {
    var numberOfRooms: Int
    var height: Int
}

let house1 = House(numberOfRooms: 2, height: 3)
