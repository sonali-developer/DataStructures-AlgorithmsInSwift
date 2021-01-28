
//Recursive Implementation of Merge Sort in Swift 5 programming language
//Credit - Sean Allen 
//Youtube Link - https://www.youtube.com/watch?v=DfO089qWEE8

class MergeSort {


	func performMergeSort(_ unsortedArray: [Int]) -> [Int] {
		guard unsortedArray.count > 1 else {
			return unsortedArray
		}
		let leftArr = Array(unsortedArray[0..<unsortedArray.count/2])
		let rightArr = Array(unsortedArray[unsortedArray.count/2..<unsortedArray.count])

		return combine(left: performMergeSort(leftArr), right: performMergeSort(rightArr))
	}

	func combine(left: [Int], right: [Int]) -> [Int] {
		
		var mergedArray: [Int] = []
		var leftArr = left
		var rightArr = right
		
		while leftArr.count > 0 && rightArr.count > 0 {
			if leftArr.first! < rightArr.first! {
				mergedArray.append(leftArr.removeFirst())
			} else {
				mergedArray.append(rightArr.removeFirst())
			}
		}
		return mergedArray + leftArr + rightArr
	}

}


let sort = MergeSort()
var sortedArray = sort.performMergeSort([5,4,3,2,1])
print(sortedArray)
sortedArray = sort.performMergeSort([5,1,6,2,7,3,8,10,9,4])
print(sortedArray)
sortedArray = sort.performMergeSort([1,2,6,7,1,4,3,9,8,56,25,180,25,45,67,12,66,13,12,5,6,3])
print(sortedArray)


/*
% swift RecursiveMergeSort.swift
[1, 2, 3, 4, 5]
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
[1, 1, 2, 3, 3, 4, 5, 6, 6, 7, 8, 9, 12, 12, 13, 25, 25, 45, 56, 66, 67, 180]
*/