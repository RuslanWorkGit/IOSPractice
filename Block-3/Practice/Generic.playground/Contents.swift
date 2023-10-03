import UIKit

func swapData<SomeData>(_ val1: inout SomeData, _ val2: inout SomeData) {
    let newParam = val1
    val1 = val2
    val2 = newParam
}

var first = 1
var second = 2

swapData(&first, &second)

first
second

var text1 = "One"
var text2 = "Two"

swapData(&text1, &text2)

text1
text2

//-----------------------------2---------------------------

func tupleData<SomeData>(_ val1: SomeData, _ val2: SomeData) -> (first: SomeData, second: SomeData) {
    (val1, val2)
}

let myData = tupleData(first, second)

myData

//-----------------------------3---------------------------

func addSum<SomeValue: Numeric>(_ val1: SomeValue, _ val2: SomeValue) -> SomeValue {
    val1 + val2
}

let summ = addSum(first, second)

//-----------------------------4---------------------------

class Dict<Key: Hashable, Value> {
    
    private var dataDict: [Key: Value] = [:]
    
    func addToDict(value: Value, myKey: Key) {
        dataDict[myKey] = value
    }
    
    func getValue(findKey: Key) -> Value? {
        return dataDict[findKey]
    }
}

var myDict = Dict<String, String>()
myDict.addToDict(value: "Ruslan", myKey: "Ansq")
myDict.addToDict(value: "Ukrlan", myKey: "ancka")
myDict

myDict.getValue(findKey: "ancka")
myDict.getValue(findKey: "jsjsj")
