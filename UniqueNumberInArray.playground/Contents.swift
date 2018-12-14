import UIKit

// Problem of finding count of, and unique number/numbers in a given array.

let originalArray = [[4,6,6,8,9,9,8,3,1,2,2,1,77,34,55,55,67,67],[1,2,3,3,2,4,5,6,4,7,6,5,8,8,7,9,11,12,34,77], [4,5,6,1,2,4,5,6,1,2,3,5,6,9,8,7,9,8,0,9,8,9]]

func findingUniqueElements(in array: [Int]) -> ([Int], Int) {
    
    var originalArrayMap = [Int: Int]()
    var uniqueArray = [Int]()
    
    for number in array {
        if originalArrayMap[number] == nil {
            originalArrayMap[number] = 1
        } else {
            originalArrayMap[number]! += 1
        }
    }
    
    for (key, value) in originalArrayMap {
        if (value == 1) {
            uniqueArray.append(key)
        }
    }
    
    return (uniqueArray, uniqueArray.count)
    
}

for i in 0..<originalArray.count {
    let (arr, number) = findingUniqueElements(in : originalArray[i])
    if number > 0 {
        print("Number of unique elements in \(originalArray[i]) : \(number) ")
        print("Unique elements are: \(arr)")
    }
}

/* Output:

Number of unique elements in [4, 6, 6, 8, 9, 9, 8, 3, 1, 2, 2, 1, 77, 34, 55, 55, 67, 67] : 4
Unique elements are: [3, 34, 4, 77]
Number of unique elements in [1, 2, 3, 3, 2, 4, 5, 6, 4, 7, 6, 5, 8, 8, 7, 9, 11, 12, 34, 77] : 6
Unique elements are: [11, 1, 9, 77, 34, 12]
Number of unique elements in [4, 5, 6, 1, 2, 4, 5, 6, 1, 2, 3, 5, 6, 9, 8, 7, 9, 8, 0, 9, 8, 9] : 3
Unique elements are: [7, 3, 0]

*/







