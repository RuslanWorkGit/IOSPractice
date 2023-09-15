
let animals = ["Cat", "Wolf", "Rabbit", "Dog", "Horse", "Mouse", "Kenguru"]

//for

for _ in 0...3 {
    //print("Hello")
}

for animal in animals {
//    print(animal)
//    print(animal.count)
}

//add where

//for animal in animals where animal != "Dog" {
//    print(animal)
//}

for animal in animals where animal.count > 3 {
    //print(animal)
}

//index

for (index, animal) in animals.enumerated() {
    print(index)
    print(animal)
    print()
}


//break and continue

for index in 1...10 {
    
    if index == 5 {
        continue
    }
    print(index)
}
 
//while

var i = -10

while i <= 0{
    print(i)
    i += 1
}
