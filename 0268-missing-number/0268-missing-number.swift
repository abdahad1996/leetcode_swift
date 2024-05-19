class Solution {
   // compute expected sum - real sum; xor n with each index and value;
// i+1 cause number start from 1 but in swift we have 0th index
    func missingNumber(_ nums: [Int]) -> Int {
        var result = 0
        
        for i in 0...nums.count-1 {
            print("before :\(result)")
            result = result + (i+1) - nums[i] 
             print("after :\(result)")
        }
        
        return result
    }
}