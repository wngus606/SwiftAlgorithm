import Foundation

func binarySearch<T: Comparable>(list: [T], item: T) -> Int? {
    var low = 0
    var high = list.count - 1

    while low <= high {
        let midIndex = (low + high) / 2
        let guess = list[midIndex]

        if guess == item {
            return midIndex
        }

        if guess > item {
            high = midIndex - 1
        } else {
            low = midIndex + 1
        }
    }

    return nil
}

let myList = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]

print(binarySearch(list: myList, item: 5) ?? "nil")
