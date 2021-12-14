import Cocoa

/*
 Simple sorting algorithm
 Stable Sort; Bubble, Merge, and Insertion
 Time Complexity: O(n^2)
 Space Complexity: O(1)
 */
func insertionSort(_ array:[Int]) -> [Int] {
    guard array.count > 0 else {
        return array
    }
    
    var temp = array
    
    for index in 1..<temp.count {
        let value = temp[index]
        var position = index
        
        while (position > 0 && temp[position - 1] > value) {
            temp.swapAt(position, position - 1)
            position -= 1
        }
    }
    return temp
}

var numbers: [Int] = []
for _ in 1..<10 {
    numbers.append(Int.random(in: 1..<100))
}

print("\(numbers)")

let test = insertionSort(numbers)

print("\(test)")
