import UIKit

//MergeSort handling duplicate values too and recursive implementation

func mergeSort(array: [Int]) -> [Int] {
    
    let middleIndex = array.count / 2
    let noOfElements = array.count
    
    guard array.count > 0 else {
        print("Array is empty")
        return []
    }
    
    // Base Condition for recursion
    
    guard array.count > 1 else {
        return array
    }
    
    let left = Array(array[0..<middleIndex])
    let right = Array(array[middleIndex..<noOfElements])
    
    let leftSortedArray = mergeSort(array: left)
    let rightSortedArray = mergeSort(array: right)
    
    return merge(left: leftSortedArray, right: rightSortedArray)
}

func merge(left: [Int], right: [Int]) -> [Int] {
    
    let totalElementsInSortedArray = left.count + right.count
    var sortedArray = Array(repeating: 0, count: totalElementsInSortedArray)
    var currentLeftIndex = 0
    var currentRightIndex = 0
    var currentSortedIndex = 0
    
    while (currentSortedIndex < sortedArray.count) {
        
        while(currentLeftIndex < left.count && currentRightIndex < right.count) {
            if (left[currentLeftIndex] < right[currentRightIndex]) {
                sortedArray[currentSortedIndex] = left[currentLeftIndex]
                currentLeftIndex += 1
                currentSortedIndex += 1
            } else if (left[currentLeftIndex] > right[currentRightIndex]) {
                sortedArray[currentSortedIndex] = right[currentRightIndex]
                currentRightIndex += 1
                currentSortedIndex += 1
            } else if (left[currentLeftIndex] == right[currentRightIndex]) {
                sortedArray[currentSortedIndex] = left[currentLeftIndex]
                currentLeftIndex += 1
                currentSortedIndex += 1
                sortedArray[currentSortedIndex] = right[currentRightIndex]
                currentRightIndex += 1
                currentSortedIndex += 1
            }
        }
        
        while (currentLeftIndex < left.count) {
            sortedArray[currentSortedIndex] = left[currentLeftIndex]
            currentLeftIndex += 1
            currentSortedIndex += 1
        }
        
        while (currentRightIndex < right.count) {
            sortedArray[currentSortedIndex] = right[currentRightIndex]
            currentRightIndex += 1
            currentSortedIndex += 1
        }
        
    }
    
    
    return sortedArray
}

print(mergeSort(array : [5,1,6,2,7,3,8,10,9,4]))
print(mergeSort(array:[1,2,6,7,1,4,3,9,8,56,25,180,25,45,67,12,66,13,12,5,6,3]))
