
let someInt: Int = 10
let someFloat: Float = 3.2
let someDouble: Double = 2.12

let sum: Double = Double(someInt) + Double(someFloat) + someDouble

//MARK: - next task

typealias Name = String
typealias Number = Int
typealias Price = Float

let film: (name: Name, releaseYear: Number) = ("Spider-Man", 2019)
let phone: (name: Name, price: Price) = ("Iphone XR", 500.0)
let country: (name: Name, capital: Name) = ("Ukraine", "Kyiv")

print("Film name is \(film.name), phone name is \(phone.name), country name is \(country.name)")
print()
print("Year of reales \(film.releaseYear), phone price is \(phone.price), cuntry capital is \(country.capital)")
