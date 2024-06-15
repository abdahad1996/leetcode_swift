//inserton sort 
// Insertion Sort Works
// Start with the second element (assuming the first element is a sorted sublist of one element).
// Compare the current element to the elements in the sorted sublist (to its left).
// Shift all elements in the sorted sublist that are greater than the current element to the right.
// Insert the current element into its correct position in the sorted sublist.
// Repeat steps 2-4 for each element until the entire array is sorted.

class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
         var arr = nums
        if arr.count == 1 {
            return arr
        }
        for i in 1...nums.count-1 {
            
            var j = i-1
            while ( j >= 0 && arr[j+1] < arr[j]) {
                var temp = arr[j+1]
                arr[j+1] = arr[j]
                arr[j] = temp 
                
                j = j - 1
            }
            
        }
        
        return arr
    }
}