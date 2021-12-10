import Cocoa

/*
  The mostly slowest and simplest sorting algorithm
  Repeatedly swapping two elements
 
  Time Complexity: O(n^2)
  Space Complexity: O(1)
    -because only a single memory space is required for 'temp' variable
 
  didSwap flag
  repeat while loop
  for loop
*/

func bubbleSort(_ array:[Int]) -> [Int] {
    var temp = array
    var didSwap = false
    
    repeat {
        didSwap = false
        
        for index in 0..<temp.count - 1 {
            let first = temp[index]
            let second = temp[index + 1]
            
            if ( first > second ) {
                temp.swapAt( index , index + 1 )
                didSwap = true
            }
        }
    } while (didSwap)
    
    return temp
}

var numbers: [Int] = []
for _ in 0..<9 {
    numbers.append(Int.random(in: 1...100))
}

let test = bubbleSort(numbers)
print("\(test)")
