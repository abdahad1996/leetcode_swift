class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        //initial max = -1
        //reverse iteration
        // newmax = max(oldmax,arr[i])
        
        var maxArr = arr
        var rightMax = -1
        
        for (index, value) in arr.enumerated().reversed() {
            var newMax = max(rightMax,value)
            maxArr[index] = rightMax
            rightMax = newMax
            
        }
        
        return maxArr
    }
}