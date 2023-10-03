import UIKit

func wrap<T,D>(key: T, value: D) -> [T:D] {
//    let resultDict: Dictionary = [key: value]
//    return resultDict
    [key: value]
}


func isEqual<T: Comparable & Flyable>(val1: T, val2: T) -> Bool {
    val1 == val2
//    val1.fly()
}

protocol Flyable {
    func fly()
}


struct Storage<Element> {
    var allElements: [Element] = []
    
    mutating func addElement(element: Element) {
        allElements.append(element)
    }
}

var storage = Storage<Int>()
storage.addElement(element: 13)
storage.addElement(element: 1213)
storage.addElement(element: 143)
storage.addElement(element: 413)

print(storage.allElements)


extension Storage {
    func getFirst() -> Element? {
        allElements.first
    }
 }

print(storage.getFirst())
