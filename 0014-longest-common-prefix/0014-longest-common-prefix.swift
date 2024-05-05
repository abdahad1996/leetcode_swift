class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        //set the length to check as the first string as index
        //compare each char of each string simulataneously, here we set first string as arbitray number to check from  
        //if not equual return 
        //if one string length is not equal we are out of bounds returns
        
        var prefix = ""
        let strZeroIndex = Array(strs[0])
        for index in 0..<strZeroIndex.count{
            
            for s in strs {
                let str = Array(s)
                
                if (index == s.count) //out of bounds
                || (str[index] != strZeroIndex[index]){
                    return prefix
                }
               
            }
            print(strZeroIndex)
             prefix = prefix + String(strZeroIndex[index])
        }
        
        return prefix
    }
}