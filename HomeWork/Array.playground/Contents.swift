

var students = ["Ruslan", "Arsen", "Eugene", "Bogdan", "Andrew"]
let newStudent1 = "Marco"
let newStudent2 = "Polo"

students.insert(newStudent2, at: 0)
students.append(newStudent1)

//delleting
students.removeLast()
students.removeFirst()

let newStudentArray = ["Boris", "Jonsonuk"]

var group = students + newStudentArray

//print first and last student name
print(group.first, group.last)
print(group[1], group[2])

print("In array we have \(group.count) student")
print("Is array empty? -\(group.isEmpty)")


let newGroup = group
group.removeAll()
