
let city = "Kyiv"
var citiesOfUkraine = ["Dnipro", "Zaporizha", "Kharkiv", city]

//create empty array

let emptyArray1 = [""]
let emptyArray2 = [String()]
let emptyArray3: [String] = []
let emptyArray4: Array<String> = []
let emptyArray5: Array<String>
emptyArray5 = []

//add element

citiesOfUkraine.append("Chernigiv")
citiesOfUkraine.insert("Sumy", at: 0)

var citiesOfUSA = ["NY", "LS", "SF"]

let allCities = citiesOfUSA + citiesOfUkraine
citiesOfUkraine.append(contentsOf: citiesOfUSA)

//delet ellement

//citiesOfUSA.remove(at: 0)
citiesOfUSA.removeLast()

//popular function

print(citiesOfUkraine.count)
print(citiesOfUkraine.isEmpty)

//Array with Any types

let arrayOfAll: [Any] = ["Bob", true, 10, 21.1]
