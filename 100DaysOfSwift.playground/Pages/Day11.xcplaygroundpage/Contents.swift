import Foundation

// Day 11
// Protocols
// Protocol inheritance
// Extensions
// Protocol extensions
// Protocol-oriented programming
// Protocols and extensions summary

// Protocols

protocol Identifiable {
    var id : String { get set }
}

struct Employee : Identifiable {
    var id : String
}

let employee : Identifiable = Employee(id: "A123")
employee.id

// Protocol inheritance

protocol Eatable {
    var quantity : Double { get set }
    func eat()
}

protocol Workable {
    var hoursWorked : Double { get set }
    func work()
}

protocol Sleepable {
    var hoursSlept : Double { get } // Even though it is getter, the adopting class/struct can have a setter
    func sleep()
}

protocol Person : Eatable, Workable, Sleepable { } // inherits all the other protocols

class Alien : Person {
    
    var hoursWorked : Double
    var hoursSlept : Double
    var quantity : Double
    
    init(quantity : Double, hoursWorked : Double, hoursSlept : Double) {
        self.quantity = quantity
        self.hoursWorked = hoursWorked
        self.hoursSlept = hoursSlept
    }
    
    func eat() { print("Ate \(quantity) kg") }
    func work() { print("Worked \(hoursWorked) hours") }
    func sleep() { print("Slept \(hoursSlept) hours") }
}

let alien = Alien(quantity: 20, hoursWorked: 10, hoursSlept: 7.5)
alien.eat()
alien.work()
alien.sleep()
alien.hoursSlept = 18
alien.sleep()

// Extensions

extension Int {
    func isEven() -> Bool {
        if(self % 2 == 0){
            return true
        }
        return false
    }
}

2.isEven()
1.isEven()

// Protocol Extensions And
// Protocol-oriented programming

protocol AnotherIdentifiable {
    var id : String { get }
    func printID()
}

// Cannot have stored properties in protocol extension, can have computed property

extension AnotherIdentifiable {
    var id : String { return "DEFAULT" }
    func printID() {
        print("Id is \(id)")
    }
}

class User : AnotherIdentifiable { }

let user = User()
user.id
user.printID()


// Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
// You can build protocols on top of other protocols, similar to classes.
// Extensions let you add methods and computed properties to specific types such as Int.
// Protocol extensions let you add methods and computed properties to protocols.
// Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.
