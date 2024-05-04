class Solution {
    func lengthOfLastWord(_ s: String) -> Int {

        //start from end
        //check for space, decrement count until found last word
        // count the length of last word
        var arr = Array(s)
        var length = 0
        var i = arr.count-1
        print(arr)
        while arr[i] == " " {
            i = i - 1
        }
        while (i >= 0 && arr[i] != " " ) {
                length = length + 1
                i = i - 1
            }
        return length
    }
}