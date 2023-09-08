
// MARK: - New part

//обʼява змінних
let line: String = "Hello"
let line2 = "wordle"
let line3: String
line3 = "!"

//приведення типів
let number = 10
let div: Float = Float(number / 2)

let numberString: String = String(number)

//Char

let someChar: Character = "N"
someChar.asciiValue

//MARK: - Typealias

typealias EUR = Double

var myAmountOfMoney: EUR = 0.0

//MARK: - Tuple

let some: (String, Int) = ("Mac", 1000)
some.0


var car: (name: String,year: Int) = ("Audi", 2016)
car.name

car.name = "bmw"
