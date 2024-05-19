class Solution {
    //left and right pointer
    //mid point index
    //target < mid value , right pointer will mid - 1
    //target > mid value , left pointer will mid +1

    func search(_ nums: [Int], _ target: Int) -> Int {
        
        var left = 0
        var right = nums.count-1
        
        while left <= right {
            var mid = (right+left)/2
            print(mid)
            if (target < nums[mid]) {
                right = mid-1
            }else if (target > nums[mid]) {
                left = mid+1
            }
            else{
                return mid
            }
        }
        return -1
    }
}