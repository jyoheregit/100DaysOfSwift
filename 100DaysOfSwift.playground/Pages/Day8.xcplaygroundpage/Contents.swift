import Foundation

// Day 8
    // Creating your own structs – test
    // Computed properties – test
    // Property observers – test
    // Methods – test
    // Mutating methods – test
    // Properties and methods of strings – test
    // Properties and methods of arrays – test

struct Point {
    var x: Float
    var y: Float
}

var point = Point(x: 10, y: 20)
point.x
point.y
point.y = 40
point.y

// Computed properties

struct PointWithComputedProperty{
    var x: Float
    var y: Float
    
    var isOrigin : Bool {
        if(x == 0.0 && y == 0.0){
            return true
        }
        return false
    }
}

var anotherPoint = PointWithComputedProperty(x: 0, y: 0)
anotherPoint.isOrigin

// Property observers

struct PointWithPropertyObserver{
    var x: Float {
        willSet {
            print("newValue \(newValue)")
        }
        didSet{
            print("oldValue \(oldValue)")
        }
    }
    
    var y: Float
    
    var isOrigin : Bool {
        if(x == 0.0 && y == 0.0){
            return true
        }
        return false
    }
}

var pointWithPropertyObserver = PointWithPropertyObserver(x: 8, y: 10)
pointWithPropertyObserver.x = 10

// Methods

struct Line {
    var startPoint : Point
    var endPoint : Point
    
    func verticalDistance() -> Float {
        return endPoint.y - startPoint.y
    }
    
    func horizontalDistance() -> Float {
        return endPoint.x - startPoint.x
    }
}

var line = Line(startPoint: Point(x: 0, y: 10), endPoint: Point(x: 50, y: 50))
line.horizontalDistance()
line.verticalDistance()

// Mutating methods
struct PointWithMutatingMethod {
    var x: Float
    var y: Float
    
    mutating func updateXBy(distance dx: Float ){
        x += dx
    }
}

var pointWithMutatingMethod = PointWithMutatingMethod(x: 10, y: 10)
pointWithMutatingMethod.x
pointWithMutatingMethod.updateXBy(distance: 20)
pointWithMutatingMethod.x

// Properties and methods of strings

var string = "Hello, How are you"
string.count
string.hasPrefix("Hell")
string.hasSuffix("you")
string.uppercased()
string.sorted()
string.contains("are")
string.append(", Ram")
string =  ""
string.isEmpty

// Properties and methods of arrays

var toys = ["Woody"]
toys.count
toys.append("Buzz")
toys.index(of: "Woody")
toys.index(of: "test")
var sorted = toys.sorted()
sorted.reverse()
toys.remove(at: 0)
toys
