import Cocoa

/*
 Aka Partition Exchange Sort
 -Recursion
 -Divide and Conquer
 -Time Complexity:
   O(n2); Worst case if the array is sorted or reversed
   O(n log n)
 -Space ComplexityL
   O(n); Internal algorithme, requires no external memories
 */

func quickSort(_ array:[Int]) -> [Int] {
    
    guard array.count > 1 else { return array }
    
    let pivot: Int = array[array.count / 2]
    let less = array.filter { $0 < pivot }
    let greater = array.filter { $0 > pivot }
    let equal = array.filter { $0 == pivot }
    
    return quickSort(less) + equal + quickSort(greater)
}

let sample = [42, 32, 12, 1, 4, 94, 28, 88, 77]
let test = quickSort(sample)

print("Result: \(test)")
