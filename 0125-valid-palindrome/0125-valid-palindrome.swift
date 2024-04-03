class Solution {
    func isAlphanumeric(s:Character) -> Bool {
         return s.isLetter || s.isNumber
        
    }
    func isPalindrome(_ s: String) -> Bool {
        let arr = Array(s)
        var left = 0
        var right = s.count-1
        
        while left < right {
            while left < right && !self.isAlphanumeric(s: arr[left]) {
                left = left + 1
            }
            
            while right > left && !self.isAlphanumeric(s: arr[right]) {
                right = right - 1
            }
            
            if arr[left].lowercased() != arr[right].lowercased(){
                return false
            }
            left = left + 1
            right = right - 1
        }
        
        
        
        return true
    }
}