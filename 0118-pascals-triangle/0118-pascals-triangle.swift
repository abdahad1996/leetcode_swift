class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        // base case already at 0th index so start from 1st index
        // let's say we are finding values for 3rd row 
        // step1:previous row add 0 to front and end
        // 2nd 0 1 1 0 
        // 3rd [1,2,1]
        // = 0th index + 1st index  0+1 = [1]
        // = 1th index + 2st index  1+1 = [2]
         //= 2th index + 3st index  1+0 = [1]
         // 3rd [1,2,1]
        //loop until one pointer is out of bound  
         
          
       
        var result = [[1]]
        
        if numRows == 1 {
            return result
        }
        for i in 1...numRows-1{
            var appendedResult = [0] + result[i-1] + [0]
            var tempArry = [Int]()
            for j in 0...result.count {
                tempArry.append(appendedResult[j] + appendedResult[j+1])
            }
            result.append(tempArry)
        }
        return result
    }
}