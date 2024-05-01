class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        // #2 pointer i and j 
        // # check if value at i  and j match until i is of length substring = true
        // # if j is out of bounds without i of length substring = false
        
        var i = 0
        var j = 0
        var subString = Array(s)
        var completestring = Array(t)
        
        while (i < subString.count && j < completestring.count){
            if subString[i] == completestring[j] {
                i += 1
            }
            
            j += 1
        }
        if i == subString.count {
            return true
        }else{
            return false
        }
        
    }
}