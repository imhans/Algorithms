import Cocoa

/*
 Time Complexity: O(n*log n)
 Space Complexity: O(n)
 */
func mergeSort(_ array:[Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }

    let middleIndex = array.count / 2
    
    let left = mergeSort(Array(array[0..<middleIndex]))
    let right = mergeSort(Array(array[middleIndex..<array.count]))
    
    return merge(left, right)
}

func merge(_ left:[Int], _ right:[Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    
    var result = [Int]()
    result.reserveCapacity(left.count + right.count)
    
    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            result.append(left[leftIndex])
            leftIndex += 1
        } else if left[leftIndex] > right[rightIndex] {
            result.append(right[rightIndex])
            rightIndex += 1
        } else {
            result.append(left[leftIndex])
            result.append(right[rightIndex])
            leftIndex += 1
            rightIndex += 1
        }
    }
    
    while leftIndex < left.count {
        result.append(left[leftIndex])
        leftIndex += 1
    }
    while rightIndex < right.count {
        result.append(right[rightIndex])
        rightIndex += 1
    }
    return result
}

let sample = [4, 23, 99, 12, 84, 51, 9, 76, 30, 51]

let test = mergeSort(sample)
print("Final: \(test)")
