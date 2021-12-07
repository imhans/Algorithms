import Cocoa

func binarySearch(_ array:[Int], _ value: Int) -> Int? {
    guard !array.isEmpty else {
        return nil
    }
    
    var left: Int = 0
    var right: Int = array.count - 1
    
    while left <= right {
        let middleIndex = (left + right) / 2
        let middleValue = array[middleIndex]
        
        if (middleValue > value) {
            right = middleIndex - 1
        } else if (middleValue < value) {
            left = middleIndex + 1
        } else if (middleValue == value) {
            return middleIndex
        }
    }
    
    return nil
}

let array = [1, 5, 9, 17, 24, 31, 42, 55, 78]
let findIndex = binarySearch(array, 78)

print("\(findIndex ?? -1)")
