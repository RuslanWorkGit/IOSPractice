import UIKit

let entireScore = 60
let myScore = 75

let result = entireScore > myScore ? "Your score is too low" : "Congratulation! You accepted!"

func testResult(myScores: Int, inScore: Int) {
    guard inScore < myScores else {
        print("Your score is too low")
        return
    }
    print("Congratulation! You accepted!")
}

testResult(myScores: myScore, inScore: entireScore)

//swicht

let numberOfDay = 6
let weekend = true

switch numberOfDay {
case 1: print("Monday")
case 2: print("Tuesday")
case 3: print("Wednesday")
case 4: print("Thursday")
case 5: print("Friday")
case 6 where weekend: print("Satuday")
    fallthrough
case 7 where weekend: print("Sunday")
default: print("Please use number of range from 1 to 7")
}
