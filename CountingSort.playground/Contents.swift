import UIKit

// Counting sort with O(n) time complexity and O(n) space complexity


func performCountingSort(of unsortedArray: [Int], withMaximumValue maxValue: Int) -> [Int] {
    
    // Allocating a Counting Map
    
    var countingMapArray = Array(repeating: 0, count: maxValue + 1)
    
    // Populating the map with elements of unsorted input array
    
    for number in unsortedArray {
        countingMapArray[number] += 1
    }
    
    // Allocating an intial sorted array
    
    var sortedArray = Array(repeating: 0, count: unsortedArray.count)
    var currentSortedIndex = 0
    
    // Populating the sortedArray
    
    for (number, frequency) in countingMapArray.enumerated() {
        
        
        for _ in 0..<frequency {
            sortedArray[currentSortedIndex] = number
            currentSortedIndex += 1
        }
    }
    
    
     return sortedArray
}


let unsortedArrayList = [[77,45,2,88,3,5,3,7,8,2,9,0,4,7,6,5,44,77,11], [9,3,5,2,7,6,1,4,10,8], [12,4,9,6, 15,66,3,0,1,55,78,56,45,23,15,16,11,5,4,6,5,4,3,2,1]]
let maxValueList = [88,10,78]

for i in 0..<unsortedArrayList.count {
    let sortedArray = performCountingSort(of: unsortedArrayList[i], withMaximumValue: maxValueList[i])
    print("Sorted Array is :\(sortedArray)")
}


/* Output:
 
 Sorted Array is :[0, 2, 2, 3, 3, 4, 5, 5, 6, 7, 7, 8, 9, 11, 44, 45, 77, 77, 88]
 Sorted Array is :[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 Sorted Array is :[0, 1, 1, 2, 3, 3, 4, 4, 4, 5, 5, 6, 6, 9, 11, 12, 15, 15, 16, 23, 45, 55, 56, 66, 78]

 */
