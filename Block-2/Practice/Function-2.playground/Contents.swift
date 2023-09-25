import UIKit

func represent(_ name: String, job: String = "not work", vacationDay: Int = 0) {
    print("My name is \(name), I am work as \(job), and I have \(vacationDay) for my vacation")
}

//represent(name: "Ruslan", job: "Student", vacationDay: 365)
//represent(name: "Ruslan")
//represent(name: "Ruslan", job: "Student")

represent("Ruslan")

//---------------------------------------------------------------------------

func sum(lineOne: String, lineTwo: String) {
    print(lineOne + " " + lineTwo)
}

func sum(floatOne: Float, floatTwo: Float) {
    print(floatOne + floatTwo)
}

func sum(intOne: Int, intTwo: Int) {
    print(intOne + intTwo)
}

let name = "Ruslan"
let surname = "Lyulka"

let numFloatOne: Float = 32.1
let numFloatTwo: Float = 7.9

let numIntOne = 2
let numIntTwo = 2

sum(lineOne: name, lineTwo: surname)
sum(floatOne: numFloatOne, floatTwo: numFloatTwo)
sum(intOne: numIntOne, intTwo: numIntTwo)

//---------------------------------------------------------------------------
func representClouser(name: String, clouser: (String) -> ()){
    clouser(name)
}

representClouser(name: "Ruslan") { someName in
    if someName.contains("Bob") {
        print("Name is bob")
    } else if !someName.isEmpty {
        print("Name is real, \(someName)")
    } else {
        print("Name is empty")
    }
}
