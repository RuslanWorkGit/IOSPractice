
var randomNumber = [19, 34, -1, 9, -31, -4, 7, -5, -12, 3]

//-------------------------------1-------------------------------

for (index, number) in randomNumber.enumerated() {
    if number < 0 {
        randomNumber[index] = 0
    }
}

//-------------------------------2-------------------------------

let max = randomNumber.max() ?? 0
let min = randomNumber.min() ?? 0
print("Max element is \(max), min element is \(min)")

//-------------------------------3-------------------------------

var sum = 0

for num in randomNumber {
    sum += num
}

print("Summ of number is \(sum)")

//-------------------------------4-------------------------------
let mounths = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

var mounthsDict: [Int : String] = [:]

for (index, mounth) in mounths.enumerated() {
    mounthsDict[index] = mounth
}

mounthsDict

//-------------------------------5-------------------------------

var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]

let first = dictionary["first"]

dictionary["first"] = dictionary["fourth"]
dictionary["fourth"] = first

print(dictionary)

//-------------------------------6-------------------------------

var calendar: [Int: [String]] = [:]

for year in 1970...2023 {
    calendar[year] = mounths
}

//print(calendar)

//-------------------------------7-------------------------------

for (year, mounths) in calendar {
    calendar[year] = mounths + ["Ruslan"]
}

//print(calendar)

//-------------------------------7.1-------------------------------

var number: [Int] = []

for i in 1...31 {
    number.append(i)
}

var calendarPro: [Int : [String:[Int]]] = [:]
var calendarYear: [String: [Int]] = [:]

for mounth in mounths {
    calendarYear[mounth] = number
}

//print(calendarYear)

for year in 1970...2023 {
        calendarPro[year] = calendarYear
}

let year = 2019
let month = "September"
let day = 1

if let yearData = calendarPro[year],
   let monthData = yearData[month],
   monthData.contains(day) {
    print("\(year) \(month) \(day)")
} else {
    print("Wrong data")
}

//-------------------------------8-------------------------------

let a = 12
let b = 4

if a == b {
    print((a + b) * 3)
} else {
    if ((a + b) % 2) == 0 {
        print(a + b)
    }
}

//-------------------------------9-------------------------------

let phrase = "Hello world Ruslan!"

let words = phrase.split(separator: " ")
var resultArray: [String] = []

for word in words {
    var resultWord = ""

    for letter in word {
        if letter == "!" {
            continue
        } else {
            resultWord += String(letter)
        }
    }
    resultArray.append(resultWord)
    //print(resultWord)
}

print("First word is \(resultArray.first ?? ""), last word is \(resultArray.last ?? "")")
