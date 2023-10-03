import UIKit

// example if protoco

protocol Movable {
    var name: String {get set}
    func move()
}


struct Fox: Movable {
    var name: String
    
    func move() {
        print("Move")
    }
}

struct Eagle: SuperUnit {
    var name: String
    
    func move() {
        print("Move")
    }
    
    func fly() {
        <#code#>
    }
}

//Conforming multiple protoocls
protocol Flyable {
    func fly()
}

//protocol inharitance
protocol SuperUnit: Movable, Flyable {
    
}

//Pholimorphism

func starDay(unit: Movable) {
    unit.move()
}

let fox = Fox(name: "Fox")
let eagle = Eagle(name: "Eagle")

starDay(unit: fox)
starDay(unit: eagle)
