import UIKit

class Calculator {
    
    func plus(num1: Double, num2: Double) -> Double {
        num1 + num2
    }
    
    func minus(num1: Double, num2: Double) -> Double {
        return num1 - num2
    }
    
    func mult(num1: Double, num2: Double) -> Double {
        num1 * num2
    }
    
    func div(num1: Double, num2: Double) -> Double {
        num1 / num2
    }
    
    func remOfDiv(num1: Double, num2: Double) -> Double {
        num1.truncatingRemainder(dividingBy: num2)
    }
    
}


class SuperCalculator: Calculator {
    func myPow(number: Double, exponent: Int) -> Double{
        if exponent == 0 {
            return 1
        } else if exponent > 0 {
            return number * myPow(number: number, exponent: exponent - 1)
        } else {
            return 1 / (number * myPow(number: number, exponent: -exponent - 1))
        }
    }
    
    func percent(number: Double, percent: Double) -> Double {
        let onePercent = number / 100
        return onePercent * percent
    }
    
    override func plus(num1: Double, num2: Double) -> Double {
        print("I am SuperCalculator")
        return super.plus(num1: num1, num2: num2)
    }
    
    override func minus(num1: Double, num2: Double) -> Double {
        print("I am superCalculator")
        return super.minus(num1: num1, num2: num2)
    }
    
    override func mult(num1: Double, num2: Double) -> Double {
        print("I am superCalculator")
        return super.mult(num1: num1, num2: num2)
    }
    
    override func div(num1: Double, num2: Double) -> Double {
        print("I am superCalculator")
        return super.div(num1: num1, num2: num2)
    }
    
    override func remOfDiv(num1: Double, num2: Double) -> Double {
        print("I am superCalculator")
        return super.remOfDiv(num1: num1, num2: num2)
    }
    
}


let myCalculator = SuperCalculator()

let first = myCalculator.myPow(number: 2, exponent: -3)
let second = myCalculator.percent(number: 100, percent: 5.23)
let third = myCalculator.remOfDiv(num1: 10, num2: 2.23)

