import UIKit

var test: String? = nil
test = "Some value"
//Force unwrap

//print(test!)

//Save unvrap

let new = test ?? ""
print(new)

if let test = test {
    print(test)
}


func unwrapIt() {
    guard let tests = test else {
        return
    }
    print(tests)
}

unwrapIt()
