
var phoneBook = ["Ruslan" : 000, "Bob" : 111, "Andrew": 333]
//print(phoneBook)

//crate empty dictionary

let myDict1 = ["" : 0]
let myDict2: [String : Int] = [:]
let myDict3 = [String() : Int()]
let myDict4: Dictionary<String, Int> = [:]

//acces dictionary elements
let myElement = phoneBook["Bob"]

//add new element
phoneBook["Tom"] = 222
print(phoneBook)

//remove element
phoneBook.removeValue(forKey: "Bob")
print(phoneBook)
phoneBook["Ruslan"] = nil
print(phoneBook)

//if we call nil element
let myNewEl = phoneBook["Alice"]
print(phoneBook)

//count and isEmpty

let countOfElements = phoneBook.count
let isItEmpty = phoneBook.isEmpty

//acces keys and values to array
let allKeys = phoneBook.keys
let allValue = phoneBook.values
