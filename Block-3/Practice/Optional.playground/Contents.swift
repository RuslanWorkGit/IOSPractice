import UIKit

var name: String? = "Ruslan"
var age: Int? = 22
var isStudent: Bool? = true
var weight: Float? = 83.3
var ages: [Int] = [21, 24, 58, 32, 71, 20, 10, 19]
ages.sort()

//unraping

//nil colescing
print(name ?? "none")

let oldestAge1 = ages.last ?? 999

//if let
if let new = age {
    print(new)
} else {
    print("error")
}

if let oldestAge2 = ages.last {
    print("The oldest age is \(oldestAge2)")
} else {
    print("There is no oldest age. You must have no student.")
}

//guard statement
func unwrapFunc() {
    guard let new = weight else {
        return
    }
    
    guard let oldestAge3 = ages.last else {
        return
    }
    
    print("The oldest age is \(oldestAge3)")
    
    print(new)
}

unwrapFunc()

//---------------------------------
let oldestAge = ages.last

//----------------------------------2----------------------------------------

class classA {
    var b: classB?
}

class classB {
    var text: String
    
    init(text: String) {
        self.text = text
    }
}

let exampleB = classB(text: "Ruslan")

let exampleA = classA()
exampleA.b = exampleB

print(exampleA.b?.text)

//nil colescing
let first = exampleA.b?.text ?? ""
print(first)

//if let

if let text = exampleA.b?.text {
    print(text)
} else {
    print("Error")
}

//guard statement
func unwrapMy(some: Any?) {
    guard let text = some else {
        return
    }
    
    print(text)
}

unwrapMy(some: exampleA.b?.text)
