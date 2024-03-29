class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
       //        //[9:0,1:1]
       var numDic = [Int:Int]()
//        let arr = uniqueArr
       var count = 0
       
       for (index,num) in nums.enumerated(){
           let subtractedVal = target - num
           
           if let subTractedIndex = numDic[subtractedVal]{
               // print("pairs,\(uniqueArr[subTractedIndex]),\(num)")
               // if ( uniqueArr[subTractedIndex] + num == val ){
               //     count = count + 1
               // }
               return [subTractedIndex,index]
               
           }
           
           numDic[num] = index
          
           
           
       }
       
        
        var leftPointer = 0
//         var rightpointer = nums.count-1
//         // var count = 0
// //        [1,9,2,8,7,3] = 10
//         while(leftPointer < nums.count-1 || rightpointer > 0){
//             if nums[leftPointer] + nums[rightpointer] == target {
//                 print("pairs,\(nums[leftPointer]),\(nums[rightpointer])")
//                 // count = count + 1
//                 return [leftPointer,rightpointer]
//             }
//             else if nums[leftPointer] + nums[rightpointer] > target {
//                 rightpointer = rightpointer - 1
//             }
            
//             else if nums[leftPointer] + nums[rightpointer] < target {
//                 leftPointer = leftPointer + 1
//             }
//         }
        
        
        return []
    }
    
}