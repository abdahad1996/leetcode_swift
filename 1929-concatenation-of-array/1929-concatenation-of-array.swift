class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var Result:[Int] = []
        for i in 1...2 {
            for i in nums{
                Result.append(i)
            }
        }
        return Result
    }
}