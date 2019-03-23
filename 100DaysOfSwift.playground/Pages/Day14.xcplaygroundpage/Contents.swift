import Foundation

// Day 14
// Generics - Part 2
//

func printSequence<T: Sequence>(_ params : T) {
    for item in params {
        print(item)
    }
}

printSequence([1,2,3,4,5])
printSequence(["1": "One", "2" : "Two"])



