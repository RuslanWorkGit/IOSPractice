
//Fibonachi number

let first = 1
let second = 2
let third = 3
let fourth = 5
let fifth = 8
let sixth = 13

var sum = first + second + third + fourth + fifth + sixth
var mult = first * second * third * fourth * fifth * sixth

sum -= 10
mult /= sum

print("diference berween mult and sum is \(mult - sum)")

//--------------------------------------------------------------------

let a = 32
let b = 21
let c = 7
let d = 23

if a > b {
    print("1")
    if (a + b) < c {
        print("4")
    } else if (a - b) > c {
        print("5")
    }
} else if a < b {
    print("2")
    if (a < c) || (b < c) {
        print("6")
    } else if ((a > d) && (c > d)) && d > b {
        print("7")
    } else {
        print("9")
    }
} else {
    print("3")
    if a < 0 {
        print("8")
    }
}
