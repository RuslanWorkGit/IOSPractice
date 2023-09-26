import UIKit

class Animal {
    
    var name: String
    var age: Int
    
    init(n: String, a: Int) {
        name = n
        age = a
    }
    
    convenience init() {
        self.init(n: "", a: 0)
    }
    
    func eat() {
        print("I can eat")
    }
}

//екземпляри класа

let animal1 = Animal()
animal1.age = 10
animal1.name = "Tom"
animal1.eat()

let animal2 = Animal()
animal1.age = 11
animal1.name = "Bom"

let arrayOfAnimals = [animal1, animal2]

arrayOfAnimals[1].eat()
arrayOfAnimals.first?.eat()

//init

let animal3 = Animal(n: "Mok", a: 9)
let animal4 = Animal()
