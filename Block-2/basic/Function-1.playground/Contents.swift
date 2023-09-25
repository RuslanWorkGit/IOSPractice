import Foundation

func represent(firstName: String, lastName: String) -> String{
    firstName + " " + lastName
}

let me = represent(firstName: "Ruslan", lastName: "Lyulka")

//squared

func mySquared(myNum: Double) -> Double {
    sqrt(myNum)
}

let myNum = mySquared(myNum: 144)

//pow

func myPow(myNum: Double, exponent: Int) -> Double {
    //pow(Double(myNum), Double(myPow))
    
    if exponent == 0 {
        return 1
    } else if exponent > 0 {
        return myNum * myPow(myNum: myNum, exponent: exponent - 1)
    } else {
        return 1 / myNum * myPow(myNum: myNum, exponent: exponent + 1)
    }
    
}

let myPower = myPow(myNum: 10, exponent: -3)

//sum of squared and pow

func mySumm(firtNum: Double, secondNum: Double) -> Double{
    return mySquared(myNum: firtNum) + myPow(myNum: secondNum, exponent: 2)
}

let summCheck = mySumm(firtNum: 144, secondNum: 10)


//create cycle

var summ = 0.0
for i in 1...10 {
    for j in 1...10 {
        summ += mySumm(firtNum: Double(i), secondNum: Double(j))
    }
}

