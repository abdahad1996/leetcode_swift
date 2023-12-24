class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
     var left = 0
        for right in 0..<nums.count {
            if (nums[right] != val){
                nums[left] = nums[right]
                left += 1
            }
        }
        return left
    }
}