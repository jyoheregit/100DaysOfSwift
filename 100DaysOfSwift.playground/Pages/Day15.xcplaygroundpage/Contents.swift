import Foundation
import XCTest

// Day 15
// TDD
// Mocks and Unit testing

class TestObserver: NSObject, XCTestObservation {
    func testCase(_ testCase: XCTestCase,
                  didFailWithDescription description: String,
                  inFile filePath: String?,
                  atLine lineNumber: Int) {
        assertionFailure(description, line: UInt(lineNumber))
    }
}

let testObserver = TestObserver()
XCTestObservationCenter.shared.addTestObserver(testObserver)

protocol Memory {
    func store(number : Int)
    func values() -> [Int]
}

class MemoryModule: Memory {
    private var array : [Int] = []
    
    func store(number : Int) {
        array.append(number)
    }
    
    func values() -> [Int] {
        return array
    }
}

class MemoryModuleTests : XCTestCase {
    
    var sut : MemoryModule!

    override func setUp() {
        sut = MemoryModule()
    }
    
    func testStoreAndRetrieveValues() {
        XCTAssertTrue(sut.values().count == 0)
        sut.store(number: 20)
        sut.store(number: 40)
        XCTAssertEqual(sut.values(), [20, 40])
        sut.store(number: 100)
        XCTAssertEqual(sut.values(), [20, 40, 100])
    }
}

MemoryModuleTests.defaultTestSuite.run()

class Calculator {
    
    var memory: Memory
    
    init(memory: Memory) {
        self.memory = memory
    }
    
    func add(first : Int, second: Int) -> Int {
        memory.store(number: first)
        memory.store(number: second)
        return first + second
    }
    
    func allValues() -> [Int] {
        return memory.values()
    }
}

class MemoryModuleMock : Memory {
    
    var storeFunctionGetsCalled = false
    
    func store(number : Int) {
        storeFunctionGetsCalled = true
    }
    
    func values() -> [Int] {
        return [10, 10]
    }
}

class CalculatorTests : XCTestCase {

    var sut : Calculator!
    var memoryModuleMock : MemoryModuleMock!
    
    override func setUp() {
        memoryModuleMock = MemoryModuleMock()
        sut = Calculator(memory: memoryModuleMock)
    }
    
    func testAdd() {
        XCTAssertEqual(sut.add(first: 10, second: 10), 20)
        XCTAssertEqual(memoryModuleMock.storeFunctionGetsCalled, true)
        XCTAssertTrue(memoryModuleMock.storeFunctionGetsCalled)
        XCTAssertEqual(sut.allValues(), [10, 10])
    }
}

CalculatorTests.defaultTestSuite.run()



