import UIKit

//guard else

func printKidsAge(age: Int) {
    guard age < 18 else {
        print("I am not a kid")
        return
    }
    print(age)
}

printKidsAge(age: 8)

//swicht

let age = 26

switch age {
case 14: print("Can't drive")
case 28: print("Can drive")
default: print("?")
}

//swicht and range

switch age {
case 0...16: print("Can't drive")
case 17...70: print("Can drive")
case 70...100: print("Can't drive")
default: print("?")
}

//fallthrough / where

let isCarOwner = true
switch age {
case 0...16: print("Can't drive")
case 17...70 where isCarOwner: print("Can drive")
case 70...100: print("Can't drive")
default: print("?")
}
