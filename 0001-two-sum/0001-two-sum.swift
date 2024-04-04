class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
       //        //[9:0,1:1]
       var numDic = [Int:Int]()
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
        
        return []
    }
    
}