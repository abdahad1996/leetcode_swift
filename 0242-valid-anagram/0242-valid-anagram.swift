class Solution {
      func isAnagram(_ s: String, _ t: String) -> Bool {
        
        
//           return  s.sorted() == t.sorted()
        
        if s.count != t.count {
            return false
        }
        
        var sHash = [Character:Int]()
        var tHash = [Character:Int]()
        
        let sArr = Array(s)
        let tArr = Array(t)

        for index in 0...sArr.count-1 {
            if sHash[sArr[index]] != nil  {
                sHash[sArr[index]] = (sHash[sArr[index]]!) + 1
            }else{
                sHash[sArr[index]] = 1
            }
            
            if tHash[tArr[index]] != nil  {
                tHash[tArr[index]] = (tHash[tArr[index]]!) + 1
            }else{
                tHash[tArr[index]] = 1
            }
        }
        
        for (key,value) in sHash
        {
            if sHash[key] != tHash[key]{
                return false
            }
        }
        
        return true

       }
}