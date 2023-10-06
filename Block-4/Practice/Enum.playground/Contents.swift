import UIKit

enum CarType: String {
    case Sedan = "Sedan"
    case Coupe = "Coupe"
    case Universal
    case Van = "Van"
    case Pickup
    case Crossover
    case Cabriolet = "Cabriolet"
}

enum Color {
    case Red
    case Blue
    case Green
    case Orange
    case Gray
    case Purple
    case Yellow
    case Black
    case Brown
    
    func typeOfColor() -> String {
        switch self {
        case .Red:
            return "it is a bright color"
        case .Blue:
            return "it is a bright color"
        case .Green:
            return "it is a bright color"
        case .Orange:
            return "it is a bright color"
        case .Gray:
            return "it is a dark color"
        case .Purple:
            return "it is a bright color"
        case .Yellow:
            return "it is a bright color"
        case .Black:
            return "it is a dark color"
        case .Brown:
            return "it is a dark color"
        }
    }
}

//test enum

let myCar = CarType.Coupe
print(myCar.rawValue)
let friendsCar = CarType.Universal
print(friendsCar.rawValue)

let myColor = Color.Blue
print(myColor.typeOfColor())
let friendsColor = Color.Black
print(friendsColor.typeOfColor())

//Associated values

enum Calculator {
    case add(Int, Int)
    case sub(Int, Int)
    case mult(Float, Float)
    case div(Double, Double)
    
    func calculateResult() -> Float {
        switch self {
        case .add(let int, let int2):
            return Float(int + int2)
        case .sub(let int, let int2):
            return Float(int - int2)
        case .mult(let float, let float2):
            return float * float2
        case .div(let double, let double2):
            if double2 != 0 {
                return Float(double / double2)
            } else {
                return 0.0
            }
        }
    }
}

let add = Calculator.add(10, 1)
let sub = Calculator.sub(32, 64)
let mult: Calculator = .mult(10, 5)
let div: Calculator = .div(3.33, 1.11)

let result1 = add.calculateResult()
let result2 = sub.calculateResult()
let result3 = mult.calculateResult()
let result4 = div.calculateResult()

print("Result of addition: \(result1)")
print("Result of subtraction: \(result2)")
print("Result of multiplacation: \(result3)")
print("Result of division: \(result4)")
