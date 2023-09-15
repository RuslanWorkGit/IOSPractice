
let weekDays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Satuday", "Sunday"]

for (index, day) in weekDays.enumerated() {
    if index == 3{
        break
    }
    print("\(index + 1) - \(day)")
}


let ages = [21, 22, 23, 17, 29, 42, 15, 56, 22, 11, 98, 23, 12 ,40]

for age in ages {
    //print("I am \(age) years old")
    if age < 18 {
        //print("Child")
        print("I have already celebrate my: ")
        for i in 1...age {
            print("- \(i) years")
        }
    } else {
        print("Adult")
    }
}
