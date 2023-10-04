import UIKit

//------------------------------3---------------------------
extension Int {
    func myPow(exponent: Int) -> Double {
        
        if exponent == 0 {
            return 1.0
        } else if exponent > 0 {
            var result = 1.0
            for _ in 1...exponent {
                result *= Double(self)
            }
            return result
        } else {
            var result = 1.0
            for _ in 1...(-exponent) {
                result /= Double(self)
            }
            return result
        }
    }
}

let number = 10
number.myPow(exponent: 3)
number

extension String {
    var isPalindrom: Bool {
        let clearPhrase = self.lowercased().replacingOccurrences(of: " ", with: "")
        let reversed = String(clearPhrase.reversed())
        return clearPhrase == reversed
    }
}


var name = "Bobob Bobob"
//String(name.reversed())
//if name == String(name.reversed()) {
//    print("True")
//} else {
//    print("False")
//}
//
name.isPalindrom


