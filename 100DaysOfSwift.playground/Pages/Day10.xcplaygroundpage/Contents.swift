import Foundation

// Day 10
//    Creating your own classes
//    Class inheritance
//    Overriding methods
//    Final classes
//    Copying objects
//    Deinitializers
//    Mutability
//    Classes summary

           // Struct vs Classes difference:
// Classes always create with initializer unlike Struct which get a memberwise init by default
// Classes can be inherited unlike struct
// When you copy a struct, both the original and the copy are different things – changing one won’t change the other.
// When you copy a class, both the original and the copy point to the same thing, so changing one does change the other.
// Classes can have deinitializers – code that gets run when an instance of a class is destroyed.
// If you have a constant struct with a svariable property, that property can’t be changed because the struct itself is constant. Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created as constant or variable.

// Creating your own classes

class Employee {
    
    var employeeID: String
    
    init(employeeID : String) {
        self.employeeID = employeeID
    }
    
    deinit {
        print("deinit called")
    }
}

let employee = Employee(employeeID: "A123")

// Class inheritance

class ContractEmployee : Employee {
    
    var contractCompany : String
    
    init(employeeID: String, contractCompany : String) {
        self.contractCompany = contractCompany // First should initalize subclass properties
        super.init(employeeID: employeeID)
    }
}

let contractEmployee = ContractEmployee(employeeID: "B123", contractCompany: "ABC Inc")
contractEmployee.contractCompany
contractEmployee.employeeID

class PermanentEmployee : Employee {
    
}

let permanentEmployee = PermanentEmployee(employeeID: "C123") //Initializer inherited by subclass
permanentEmployee.employeeID

// Overriding methods

extension Employee {
    
    @objc func employerName() -> String { // only after adding objc it allows to override in extension
        return "MNC Inc"
    }
}

extension ContractEmployee {
    
    override func employerName() -> String {
        return contractCompany
    }
    
}

employee.employerName()
contractEmployee.employerName()

// Final class

final class TerminatedEmployee : Employee {
    
    
}

// cannot inherit gives compile time error
// class TestingEmployee : TerminatedEmployee { }

// Copying objects

let employee1 = Employee(employeeID: "A123")
let employee2 = employee1

employee1.employeeID
employee2.employeeID

employee2.employeeID = "B123"
employee2.employeeID
employee1.employeeID

struct EmployeeStruct {
    var employeeID : String
}

let employeeStruct1 = EmployeeStruct(employeeID: "A123S")
var employeeStruct2 = employeeStruct1 // This has to be variable to change the value of employeeID, for class it can be a constant but the property can be changed

employeeStruct1.employeeID
employeeStruct2.employeeID

employeeStruct2.employeeID = "B123S"

employeeStruct1.employeeID
employeeStruct2.employeeID

// Deinitializers

for _ in 1...3 {
    let employee = Employee(employeeID: "123")
    employee.employerName()
}




// Classes and structs are similar, in that they can both let you create your own types with properties and methods.
// One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.
// You can mark a class with the final keyword, which stops other classes from inheriting from it.
// Method overriding lets a child class replace a method in its parent class with a new implementation.
// When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.
// Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.
// Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.




