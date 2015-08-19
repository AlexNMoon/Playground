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

let sortedNumbers2 = sorted(numbers) {$1 > $0}
println(sortedNumbers2)

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

class EquilateralTriangle: Shape {
    var sideLength: Double = 0.0
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue/3.0
        }
    }
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)"
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "tr")
println(triangle.perimeter)
triangle.perimeter = 9.9
println(triangle.sideLength)


class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
           triangle.sideLength = newValue.sideLength
        }
    }
    var square: Square{
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String){
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another shape")
println(triangleAndSquare.square.sideLength)
println(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
println(triangleAndSquare.triangle.sideLength)
println(triangleAndSquare.triangle.name)
println(triangleAndSquare.square.name)

class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes times: Int){
        count += amount*times
    }
}
var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)
counter.incrementBy(3, numberOfTimes: 3)

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    
    func simpleDescripion() -> String{
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.Ace
let aceRawValue = ace.rawValue

func compare(firstRank first: Rank, secondRank second: Rank) -> String {
    if first.rawValue > second.rawValue {
        return "\(first.simpleDescripion()) > \(second.simpleDescripion())"
    }
    if first.rawValue == second.rawValue {
        return "\(first.simpleDescripion()) = \(second.simpleDescripion())"
    }else {
        return "\(second.simpleDescripion()) > \(first.simpleDescripion())"
    }
}
let four = Rank.Four

compare(firstRank: ace, secondRank: four)
compare(firstRank: Rank.Queen, secondRank: Rank.Seven)
compare(firstRank: ace, secondRank: Rank.Ace)

if let convertedRank = Rank( rawValue: 3){
    let treeDescription = convertedRank.simpleDescripion()
}

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    func color() -> String {
        switch self {
        case .Spades, .Clubs:
            return "black"
        case .Diamonds, .Hearts:
            return "red"
        }
    }
}

let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()
let heartsColor = hearts.color()

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescripion()) of \(suit.simpleDescription()) "
    }
    func deckOfCards() -> String {
        let cardRank = [Rank.Ace, Rank.Two, Rank.Three, Rank.Four, Rank.Five, Rank.Six, Rank.Seven, Rank.Eight, Rank.Nine, Rank.Ten, Rank.Jack, Rank.Queen, Rank.King]
        let cardSuit = [Suit.Hearts, Suit.Diamonds, Suit.Clubs, Suit.Spades]
        var deck: [Card] = []
        var deckCardsName = ""
        for deckRrank in cardRank {
            for deckSuit in cardSuit{
                var number=0
                deck[number] = Card(rank: deckRrank, suit: deckSuit)
                deckCardsName+="\(deck[number].simpleDescription()) "
                number+=1
            }
        }
        return deckCardsName
    }
}

let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()


enum ServerResponse {
    case Result(String, String)
    case Error(String)
    case TryAgain(String)
}
let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Error("Out of cheese.")
let tryAgain = ServerResponse.TryAgain("")

switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse = "Failure... \(error)"
case let .TryAgain(tryAgain):
    let serverResponse = "Try again in a minute!"
}

switch failure {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse = "Failure... \(error)"
case let .TryAgain(tryAgain):
    let serverResponse = "Try again in a minute!"
}
switch tryAgain {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse = "Failure... \(error)"
case let .TryAgain(tryAgain):
    let serverResponse = "Try again in a minute!"
}

protocol ExampleProtocol {
    var simpleDescription: String {get}
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}

func repeat<Item>(item: Item, times: Int) -> [Item] {
    var result = [Item]()
    for i in 0..<times {
        result.append(item)
    }
    return result
}
repeat("knock", 4)





















