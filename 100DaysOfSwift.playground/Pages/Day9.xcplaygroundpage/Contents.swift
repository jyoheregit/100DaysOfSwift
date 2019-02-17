import Foundation

// Day 9
    // Initializers
    // Referring to the current instance
    // Lazy properties
    // Static properties and methods
    // Access control
    // Structs summary

// Initializers

struct Employee {
    var employeeID : String
}

let employee = Employee(employeeID: "A123")

struct EmployeeWithInitializer {
    var employeeID : String
    
    init() {
        employeeID = "A123" // Need to initailize otherwise will give compiletime error
        print(employeeID)
    }
    
}

let employeeWithIntializer = EmployeeWithInitializer()

// Referring to the current instance using self

struct EmployeeWithInitializerAndParameter {
    var employeeID : String

    init(employeeID : String) {
        self.employeeID = employeeID
    }
}

let employeeWithIntializerAndParameter = EmployeeWithInitializerAndParameter(employeeID: "B123")

// Lazy properties

struct SalaryCalculator {
    static func calculateSalary(employeeID : String) -> Double {
        print("calculatesalary")
        if(employeeID == "C123") {
            return 1000
        }
        return 5000
    }
}

struct EmployeeWithLazyProperty {
    var employeeID : String
    // Lazy properties are calculated only once.
    lazy var creditSalary : Double = SalaryCalculator.calculateSalary(employeeID: employeeID)
    
    init(employeeID : String) {
        self.employeeID = employeeID
        print("set employeeID")
    }
}

var employeeWithLazyProperty = EmployeeWithLazyProperty(employeeID: "C123") // should be a var since we are changing creditSalary
employeeWithLazyProperty.creditSalary // Now only the lazy property is evaluated
employeeWithLazyProperty.employeeID = "D123"
employeeWithLazyProperty.creditSalary // The value does not change as lazy properties are calcuated only once

// Static properties and methods

struct EmployeeWithStatic {
    
    var employeeID : String
    static var numberOfEmployees = 0
    
    init(employeeID : String) {
        self.employeeID = employeeID
        EmployeeWithStatic.numberOfEmployees += 1
    }
}

var employeeWithStatic = EmployeeWithStatic(employeeID : "A123")
EmployeeWithStatic.numberOfEmployees

employeeWithStatic = EmployeeWithStatic(employeeID : "B123")
EmployeeWithStatic.numberOfEmployees

// Access control

struct EmployeeWithPrivateProperty {
    
    private var employeeID : String // cannot be accessed outside of the Struct only inside
    init(employeeID : String) {
        self.employeeID = employeeID
    }
    
    func printEmployeeID()  {
        print("EmployeeID \(employeeID) is confidential")
        privateMethod()
    }
    
    private func privateMethod() {
        print("private Method")
    }
}

var employeeWithPrivateProperty = EmployeeWithPrivateProperty(employeeID: "A123")
employeeWithPrivateProperty.printEmployeeID()


