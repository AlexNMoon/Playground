//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let string1 = str + "!!!!!"


let two = 1 + 1

1 + 1

let number: Float = 4

let label = "The width is"
let width = 94
let widthLabel = label + String(width)
let widthLabel2 = label + " \(width)"
let widthLabel3 = label + " \(width + two)"

var list = ["Jane"]

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
println(teamScore)


var optionalString: String? = "Hello"
println(optionalString == nil)


var optionalName: String? = "John"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let vegetable = "red pepper"
switch vegetable {
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log"
    case "cucumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich"
    case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is it a spicy \(x)?"
    default:
        let vegetableComment = "Everything tastes good in soup"
}

let intrestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestKind = ""
for (kind, numbers) in intrestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = "\(kind)"
        }
    }
}
println(largest)
println(largestKind)

var n = 2
while n < 100 {
    n=n*2
}

println(n)

var m=50
do {
m=m*2
} while m<100
println(m)

var firstForLoop = 0
for i in 0..<4 {
    firstForLoop+=i
}
println(firstForLoop)

var secondForLoop = 0
for i in 0...4 {
    secondForLoop+=i
}
println(secondForLoop)

func greet(name: String, day: String) ->String {
    return "Hello \(name), today is \(day)"
}

greet("Bob", "Tuesday")

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}

let statistics = calculateStatistics([5, 3, 100, 3, 9])
println(statistics.sum)
println(statistics.2)

func sumOf(numbers: Int...) ->Int {
    var sum = 0
    for number in numbers{
        sum += number
    }
    return sum
}
sumOf()
sumOf(42, 597, 12)

func makeIncrementer()->(Int->Int){
    func addOne(number: Int) -> Int {
        return 1+number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

func hasAnyMatches (list: [Int], condition: Int->Bool)->Bool{
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThenTen(number: Int)->Bool{
    return number < 10
}
var numbers = [12, 19, 7, 20]
hasAnyMatches(numbers, lessThenTen)

let mappedNumbers = numbers.map({ number in 3*number})
println(mappedNumbers)

let sortedNumbers = sorted(numbers) {$0 > $1}
println(sortedNumbers)

class Shape {
    var numberOfSides = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func simpleDescription() -> String{
        return "A shape with \(numberOfSides) sides."
    }
}
var shape = Shape(name: "Shape")
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

class Square: Shape {
    var sideLength: Double
    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    func area() -> Double
    {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square  with sides of length \(sideLength)"
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

class Circle: Shape {
    var radius: Double
    init(radius: Double, name: String){
        self.radius = radius
        super.init(name: name)
        numberOfSides=1
    }
    func area() -> Double{
        return 3.14*radius*radius
    }
    override func simpleDescription() -> String {
        return "A circle with radius \(radius)"
    }
}
let testCircle = Circle(radius: 3.4, name: "first circle")
testCircle.area()
testCircle.simpleDescription()




















