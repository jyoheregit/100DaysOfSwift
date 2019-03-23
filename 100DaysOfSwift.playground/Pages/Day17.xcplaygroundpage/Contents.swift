import Foundation

// Day 17
// GCD
// DispatchQueue - Sync vs Async

func smile() {
    print("😊")
}

func cry() {
    print("😢")
}

let concurrentQueue = DispatchQueue(label: "ConcurrentQueue", qos: .background, attributes: .concurrent)

// sync is a block call. The next line of execution starts only after the sync block in completed
concurrentQueue.sync {
    for _ in 1...5 {
        smile()
    }
}

print("After smile")

concurrentQueue.async {
    for _ in 1...5 {
        cry()
    }
}
