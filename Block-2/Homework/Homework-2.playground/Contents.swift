import UIKit

//----------------------------1----------------------------

class Sailor {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func introduceMyself() {
        print("Hello, my name is \(name)")
    }

}

//----------------------------2----------------------------

class Ship {
    let shipName: String
    let comand: [Sailor]
    
    init(shipName: String, comand: [Sailor]) {
        self.shipName = shipName
        self.comand = comand
    }
    
    func introduceAll() {
        for sailor in comand {
            sailor.introduceMyself()
        }
        
        print("We are from the \(shipName) ship")
    }
}

//----------------------------3----------------------------

let sailor1 = Sailor(name: "Ruslan")
let sailor2 = Sailor(name: "Antonio")
let sailor3 = Sailor(name: "Banderas")
let sailor4 = Sailor(name: "Bogdan")
let sailor5 = Sailor(name: "Eugene")

let ship = Ship(shipName: "Titanic", comand: [sailor1, sailor2, sailor3, sailor4, sailor5])

ship.introduceAll()

//----------------------------4----------------------------

class Titanic: Ship {
    
    override func introduceAll() {
        super.introduceAll()
        for sailor in comand {
            print("Привіт, мене звати \(sailor.name)")
        }
        
        print("Ми з корабля \(shipName)")
    }
    
}

class TitanicSailor: Sailor {
    
    override func introduceMyself() {
        print("Hello, I am \(name)!")
    }
}

//----------------------------5----------------------------

class Calculator {
    
    func plus(a: Double, b: Double) -> Double {
        a + b
    }
    
    func minus(a: Double, b: Double) -> Double {
        a - b
    }
    
    func mult(a: Double, b: Double) -> Double {
        a * b
    }
    
    func div(a: Double, b: Double) -> Double {
        a / b
    }
}

class CalculatorPro: Calculator {
    
    func percent(number: Double, percent: Double) -> Double {
        let onePercent = number / 100
        return onePercent * percent
    }
    
    func myPow(number: Double, exponent: Int) -> Double {
        
        if exponent == 0 {
            return 1
        } else if exponent > 0 {
            return number * myPow(number: number, exponent: exponent - 1)
        } else {
            return 1 / (number * myPow(number: number, exponent: -exponent - 1))
        }
    }
}

//----------------------------6----------------------------

class SuperProCalculator: CalculatorPro {
    
    func depositCalculate(amount: Double, annualRate: Double, years: Int) -> Double {
        
        let rate = annualRate / 100.0
        
        let commonAmount = amount * myPow(number: 1.0 + rate, exponent: years)
        
        return commonAmount
    }
}

let calculator = SuperProCalculator()

calculator.depositCalculate(amount: 1000, annualRate: 5, years: 1)
calculator.myPow(number: 10, exponent: 3)


//----------------------------7----------------------------

func batteryLife(batteryPercent: Int) {
    switch batteryPercent {
    case 100: print("Your phone have full charge battery")
    case 70...80: print("You need charge your phone in 6 hours")
    case 20...40: print("Please, put your phone to charger")
    case 0: print("Your phone dead((")
    default: print("Unknown value, try anouther number")
    }
}

batteryLife(batteryPercent: 22)
