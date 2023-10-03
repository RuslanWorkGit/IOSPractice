import UIKit

//Computed properties

extension Double {
//    var someValue  = 10
    var km: Double { return self * 1000 }
    var m: Double { return self }
    var cm: Double { return self / 100}
}

let distance = 51.km + 374.m + 45.cm
 

//protocol extension

protocol Flyable {
    func fly()
}

extension Flyable {
    func fly() {
        print("Fly!")
    }
}

struct Bird: Flyable {
    
}

let myBird = Bird()
myBird.fly()

//------------------------------

struct Airplane{
    
}

extension Airplane: Flyable {
    func fly() {
        print("Airplane is fly!")
    }
}

