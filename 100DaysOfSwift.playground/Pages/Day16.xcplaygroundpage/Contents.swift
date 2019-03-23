import Foundation

// Day 16
// GCD
// DispatchQueue - Serial
// DispatchQueue - Concurrent

func smile() {
    print("😊")
}

func cry() {
    print("😢")
}

func doubleSmile() {
    print("😊-😊")
}

func doubleCry() {
    print("😢-😢")
}

let serialQueue = DispatchQueue(label: "Serial Queue")

serialQueue.async {
    for _ in 1...10 {
        smile()
    }
}
//Async creates a new thread and moves to the next line of execution
print("After smile")

// Only after the above task is completed the below task in aysnc block starts
serialQueue.async {
    for _ in 1...10 {
        cry()
    }
}
print("After cry")

let concurrentQueue = DispatchQueue(label: "ConcurrentQueue", qos: .background, attributes: .concurrent)

concurrentQueue.async {
    for _ in 1...10 {
        doubleSmile()
    }
}
print("After double smile")

concurrentQueue.async {
    for _ in 1...5 {
        doubleCry()
    }
}

print("After double cry")




























