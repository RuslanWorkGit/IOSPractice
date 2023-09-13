
var countryAndCapital = ["Ukraine" : "Kyiv", "UK" : "London", "USA" : "Washington"]
var cityIndex = ["Kyiv" : 03056, "London" : 78313, "Washington" : 10031]
var studentStatus = ["Ruslan" : true, "Boris" : false, "Denzel" : false]


//let selectedCountryAndCapital = countryAndCapital["Ukraine"]
//let selectedCityIndex = cityIndex["London"]
//let selectedStudentStatus = studentStatus["Denzel"]
//
//var allItems: [String: Any] = ["Ukraine" : selectedCountryAndCapital ?? "",
//                               "London" : selectedCityIndex ?? 0,
//                               "Denzel" : selectedStudentStatus ?? false]
//
//print(allItems)


let firstDictKeys = (countryAndCapital.keys).sorted()
let secondDictKeys = (cityIndex.keys).sorted()
let thirdDictKeys = (studentStatus.keys).sorted()

var allItems: [String : Any] = [:]

allItems[firstDictKeys[0]] = countryAndCapital[firstDictKeys[0]]
allItems[secondDictKeys[1]] = cityIndex[secondDictKeys[1]]
allItems[thirdDictKeys[1]] = studentStatus[thirdDictKeys[1]]
print(allItems)

//delete one element

countryAndCapital.removeValue(forKey: "USA")
cityIndex["Washington"] = nil
studentStatus.removeValue(forKey: "Denzel")

let allKeys = allItems.keys
let allValues = allItems.values

print("Keys  is \(allKeys)")
print("Value is \(allValues)")

//swap keys

allItems[secondDictKeys[1]] = countryAndCapital[firstDictKeys[0]]
allItems[firstDictKeys[0]] = cityIndex[secondDictKeys[1]]
print(allItems)



