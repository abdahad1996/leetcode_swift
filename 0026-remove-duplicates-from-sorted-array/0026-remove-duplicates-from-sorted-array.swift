class Solution {
    //logic 
    //start at 1st index as 0 always at 0th index in sorted array
    //keep 2 pointers leftpointer that keeps track of where to add unique value
    //right pointer that traverses whole array and that compares previous and current values for uniqueness
    func removeDuplicates(_ nums: inout [Int]) -> Int {

       var leftpointer = 1
 
       if nums.count == 1 {
           return leftpointer
       }
       for rightPointer in 1...nums.count-1 {
           if nums[rightPointer] != nums[rightPointer-1]{
               nums[leftpointer] = nums[rightPointer]
               leftpointer += 1
           }
       }
       return leftpointer
    }
}