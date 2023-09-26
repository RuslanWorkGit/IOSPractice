import UIKit

class Phone {
    
    var number: Int
    var model: String
    var weight: Float
    
    init(number: Int, model: String, weight: Float) {
        self.number = number
        self.model = model
        self.weight = weight
    }
    
    convenience init() {
        self.init(number: 0, model: "none", weight: 0.0)
    }
    
    convenience init(number: Int, model: String) {
        self.init(number: number, model: model, weight: 0.0)
    }
    func recieveCall(name: String) {
        print("\(name) is calling")
    }
    
    func recieveCall(name: String, number: Int){
        print("\(name) is calling, (\(number))")
    }
    
    func sendMessage(number: Int) {
        print("Message send to number \(number)")
    }
    
    func getNumber() {
        print(number)
    }
}

let myPhone = Phone(number: 099463281, model: "Iphone XR", weight: 172.2)
let myFriendPhone = Phone(number: 038318485, model: "Iphone 12", weight: 181.1)

print("My phone is \(myPhone.model), and his wight is \(myPhone.weight) and my number is \(myPhone.number)")
print("My  friend's phone is \(myFriendPhone.model), and his wight is \(myFriendPhone.weight) and my number is \(myFriendPhone.number)")

//-----------------------------------------------------------------------------------

print("-----------------------------------------------------------")
let arrayOfPhone = [myPhone, myFriendPhone]

for phone in arrayOfPhone {
    phone.recieveCall(name: "Ruslan")
    phone.getNumber()
}

print("-----------------------------------------------------------")
print()

for phone in arrayOfPhone {
    phone.recieveCall(name: "Ruslan", number: 294713874)
}

print("-----------------------------------------------------------")
print()

myPhone.sendMessage(number: 2742467781)

print("-----------------------------------------------------------")
print()

let somePhone = Phone(number: 29763191893, model: "Samsung galaxy s")
print("number of some phone is \(somePhone.number), model of some phone is \(somePhone.model), weight of some phone is \(somePhone.weight)")
