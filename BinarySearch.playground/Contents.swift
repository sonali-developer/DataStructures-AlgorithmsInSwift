import UIKit

func binarySearch(for key: Int, in array: [Int]) -> Bool {
    
    let middleIndex = array.count / 2
    let noOfElements = array.count
    
    guard array.count > 0 else {
        print("Array is empty")
        return false
    }
    
    guard (key >= array[0] && key <= array[noOfElements - 1]) else {
        //print("Key is not present in the given range of elements")
        return false
    }
    
    // Base Condition for recursion
    
    guard array.count > 1 else {
        
        if (key == array[0]) {
            return true
        } else {
            return false
        }
    }
    
    if key == array[middleIndex] {
        return true
    } else if key < array[middleIndex] {
        return binarySearch(for : key, in : Array(array[0..<middleIndex]))
    } else if key > array[middleIndex] {

        return binarySearch(for : key, in: Array(array[(middleIndex + 1)..<array.count]))
    }
    
    return false
}


let testArrays = [[1,2,3,4,5,6,7,8,9,10], [11,12,13,15,25,28,32,56,59,61,65,68,70,73,75,79,84,88,96,111,150,163,202,268,272,356], [11,12,13,14,15,16,17,18,19,20], [35,36,37,38,39,40,44,55,66,77,88,99,100]]

let targetArray = [6,88, 25, -4]

for i in 0..<targetArray.count {
    let result = binarySearch(for: targetArray[i], in: testArrays[i])
    if result {
        print("Key \(targetArray[i]) exist in given list : \(testArrays[i])")
    } else {
        print("Key \(targetArray[i]) does not exist in given list : \(testArrays[i])")
    }
}
