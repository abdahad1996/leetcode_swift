class Solution {
    //merge sort 
    //divide and merge
    func sortArray(_ nums: [Int]) -> [Int] {
        //base case
        guard nums.count > 1 else {return nums}
        
        let middleIndex = nums.count/2
        var leftArr = Array(nums[0..<middleIndex])
        var rightArr = Array(nums[middleIndex..<nums.count])
        
        //recursivelySORT
        var sortedLeftArray = sortArray(leftArr)
        var sortedRightArray = sortArray(rightArr)
        
        return merge(sortedLeftArray, sortedRightArray)

    }
}

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    var sortedArr = [Int]()
    
    // Compare elements from both arrays and merge them in sorted order
    while(leftIndex < left.count && rightIndex < right.count){
        if left[leftIndex] < right[rightIndex]{
            sortedArr.append(left[leftIndex])
            leftIndex += 1
        }else{
            sortedArr.append(right[rightIndex])
            rightIndex += 1
        }
    }
    
    // If there are remaining elements in the left array, add them to the result
    while leftIndex < left.count {
        sortedArr.append(left[leftIndex])
        leftIndex += 1
    }
    
    // If there are remaining elements in the right array, add them to the result
    while rightIndex < right.count {
        sortedArr.append(right[rightIndex])
        rightIndex += 1
    }
    
    return sortedArr
    
}